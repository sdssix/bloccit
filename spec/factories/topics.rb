 FactoryGirl.define do
   factory :topic do
     name RandomData.random_name
     description RandomData.random_sentences
   end
 end