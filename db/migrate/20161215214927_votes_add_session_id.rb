class VotesAddSessionId < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :session_id, :text

    add_index "votes", ["session_id"]
  end
end
