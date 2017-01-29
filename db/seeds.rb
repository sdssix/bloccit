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

# Create Questions
100.times do 
    Question.create!(
        title: RandomData.random_sentences,
        body: RandomData.random_paragraph,
        resolved: false
        )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"

###
