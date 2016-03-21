class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :featured_image
      t.string :featured_video
      t.string :content
      t.string :category
    end
  end
end
