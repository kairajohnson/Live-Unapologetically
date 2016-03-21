# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.destroy_all

post = Post.create!(featured_image: "http://liveunapologetically.com/wp-admin/upload.php?item=917", title: "Test Title", content: "Some content")

post1 = Post.create!(featured_image: "http://liveunapologetically.com/wp-admin/upload.php?item=917", title: "Another Title", content: "Another content")

post2 = Post.create!(featured_image: "http://liveunapologetically.com/wp-admin/upload.php?item=917", title: "Some other Title", content: "Some other body")
