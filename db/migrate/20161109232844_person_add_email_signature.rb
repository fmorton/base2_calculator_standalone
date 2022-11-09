class PersonAddEmailSignature < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :email_signature, :text
  end
end
