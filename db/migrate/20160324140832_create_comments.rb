class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_comment
    end
  end
end
