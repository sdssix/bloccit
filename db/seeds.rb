require 'random_data'

 # Create Users
 5.times do
   User.create!(
 # #3
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentences
   )
 end
 users = User.all

 # Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentences,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
 
 
#Create posts
50.times do 
# #1
    Post.create!(
# #2
    user:   users.sample,
    topic:  topics.sample,
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

user = User.first
 user.update_attributes!(
   email: 'miskemail@gmail.com', # replace this with your personal email
   password: 'password'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
###


