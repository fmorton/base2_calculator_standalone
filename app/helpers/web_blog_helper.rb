#-----------------------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2008-2022 Base2 Incorporated--All Rights Reserved.
#-----------------------------------------------------------------------------------------------------------------------------------
module WebBlogHelper
  def blog_abstract(blog_content)
    blog_abstract = blog_content.abstract
    blog_abstract = blog_abstract.gsub("><br /><br />READ THE REST OF THIS POST >", " target='_blank'><br /><div class='more'><strong>READ MORE <i class='fa fa-caret-square-o-right'></i></strong></div>") unless blog_abstract.nil?
    blog_abstract
  end

  def blog_date(blog_content)
    display_date = blog_content.display_at.strftime("%B %d, %Y").upcase rescue nil
    display_date = blog_content.created_at.strftime("%B %d, %Y").upcase if display_date.blank?
    display_date = display_date.gsub(" 0", " ")
    display_date
  end

  def blogger_name(blog_content)
    blogger_name = blog_content.blogger_name
    blogger_name = blog_content.author if blogger_name.blank?
    blogger_name
  end

  def blog_image_uri(blog_content)
    image_uri = blog_content.image_uri
    image_uri = 'http://cdn.visitindy.com/miscellaneous/default_blue_image.jpg' if image_uri.blank?
    image_uri
  end

  def blog_delete_button(element)
    link_to("Delete", "/#{params[:controller]}/#{element.id.to_s}", :method => :delete, :data => { confirm: 'Are you sure?' })
  end
end
