set :user_sudo, :false

set :user, 'fmorton'
set :runner, 'fmorton'

set :rake, "/usr/local/bin/rake"

default_run_options[:pty] = true  #fixes ssl "Too many authentication failures" problem

set :application, "base2_calculator"
set :repository,  "git@github.com:fmorton/base2_calculator.git"
set :scm, :git

set :deploy_to, "/usr/local/deploy/#{application}"
set :deploy_via, :remote_cache

task :base2 do
  role :app, "10.0.1.4"
  role :web, "10.0.1.4"
  role :db,  "10.0.1.4", :primary => true
end

task :visitindy do
  #set :ssh_options, {:verbose => :debug}
  set :ssh_options, {:forward_agent => true}

  role :app, "65.111.254.251"
  role :web, "65.111.254.251"
  #role :app, "65.111.254.252"
  #role :web, "65.111.254.252"
  role :db,  "65.111.254.251", :primary => true
end

namespace(:customs) do
  task :symlink, :roles => :app do
    run "ln -nfs /usr/local/visitindy_files #{release_path}/public/web_files"
    run "ln -nfs /usr/local/rss #{release_path}/public/rss"
    run "ln -nfs /usr/local/web_files_old/files #{release_path}/public/files"
    run "ln -nfs /usr/local/web_files_old/podcast #{release_path}/public/podcast"
    run "ln -nfs /usr/local/web_files_old/library #{release_path}/public/library"
    run "ln -nfs /usr/local/sites/pcmabid #{release_path}/public/pcmabid"
    run "ln -nfs #{shared_path}/public/mobile_data #{release_path}/public/mobile_data"
    run "ln -nfs #{shared_path}/public/sitemap.xml #{release_path}/public/sitemap.xml"
    run "ln -nfs #{release_path}/app/assets/images #{release_path}/public/assets"
  end
end

namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  desc "Stop application"
  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  desc "Copy shared items"
  task :symlink_shared do
    run "cp -f #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "cp -f #{shared_path}/config/newrelic.yml #{release_path}/config/newrelic.yml"
    run "cp -f #{shared_path}/config/secure.yml #{release_path}/config/secure.yml"
    #run "cp /usr/local/deploy/base2_calculator/shared/misc/sitemap.xml #{release_path}/public/sitemap.xml"
    run "cp /usr/local/deploy/base2_calculator/shared/misc/robots.txt #{release_path}/public/robots.txt"
  end

  #NOTE: generates an error
  #desc "Compile assets"
  #task :assets do
  #  run "cd #{release_path}; RAILS_ENV=production bundle exec bundle exec rake assets:precompile"
  #end
  task :setup_solr_data_dir do
    run "mkdir -p #{shared_path}/solr/data"
  end

end

namespace :solr do
  desc "start solr"
  task :start, :roles => :app, :except => { :no_release => true } do 
    run "cd #{current_path} && RAILS_ENV=#{rails_env} bundle exec sunspot-solr start --port=8983 --data-directory=#{shared_path}/solr/data --pid-dir=#{shared_path}/pids"
  end
  desc "stop solr"
  task :stop, :roles => :app, :except => { :no_release => true } do 
    run "cd #{current_path} && RAILS_ENV=#{rails_env} bundle exec sunspot-solr stop --port=8983 --data-directory=#{shared_path}/solr/data --pid-dir=#{shared_path}/pids"
  end
  desc "reindex the whole database"
  task :reindex, :roles => :app do
    stop
    run "rm -rf #{shared_path}/solr/data"
    start
    run "cd #{current_path} && RAILS_ENV=#{rails_env} bundle exec rake sunspot:solr:reindex"
  end
end

# Bundler-rc deploy recipe
namespace :bundler do
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
  end
 
  task :bundle_new_release, :roles => :app do
    bundler.create_symlink
    run "cd #{release_path} && bundle install"
  end
end
after 'deploy:update_code', 'bundler:bundle_new_release'

#before "deploy:create_symlink", "deploy:assets"

after "deploy","customs:symlink"
after "deploy:migrations","customs:symlink"
after "deploy:create_symlink","customs:symlink"

after "deploy:update_code", "deploy:symlink_shared"

if ENV["DATABASE_URL"].nil?
  after 'deploy:setup', 'deploy:setup_solr_data_dir'
end
