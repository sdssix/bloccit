 FactoryGirl.define do
   factory :post do
     title RandomData.random_sentences
     body RandomData.random_paragraph
     topic
     user
     rank 0.0
   end
 end