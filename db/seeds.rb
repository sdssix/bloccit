require 'random_data'

#Create posts
50.times do 
# #1
    Post.create!(
# #2
    title: RandomData.random_sentences,
    body: RandomData.random_paragraph
    )
end

posts = Post.all

#Create Comments
# #3
100.times do
    Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

puts "Post = #{Post.count}"
Post.find_or_create_by(title: "unique title goes here", body: "unique body is here")
puts "Comment = #{Comment.count}"
Comment.find_or_create_by(body: "unique comment body is written here")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
###
