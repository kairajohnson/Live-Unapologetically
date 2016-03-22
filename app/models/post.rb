class Post < ActiveRecord::Base

  def recent_posts
    image_tag post.featured_image
    post.title
    post.content
  end
end
