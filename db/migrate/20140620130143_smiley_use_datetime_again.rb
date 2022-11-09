class SmileyUseDatetimeAgain < ActiveRecord::Migration
  def up
    change_column :smiley_faces, :smiley_face_at, :datetime
  end

  def down
  end
end
