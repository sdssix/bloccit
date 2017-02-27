require 'rails_helper'

RSpec.describe Topic, type: :model do
   let(:topic) { create(:topic) }

    it { is_expected.to have_many(:posts) }
    
 # #9
   it { is_expected.to have_many(:labelings) }
 # #10
   it { is_expected.to have_many(:labels).through(:labelings) }    
    
 # #1
   describe "attributes" do
     it "has name, description, and public attributes" do
       expect(topic).to have_attributes(name: topic.name, description: topic.description)
     end

 # #2
     it "is public by default" do
       expect(topic.public).to be(true)
     end
   end
   
 
   describe "scopes" do
     before do
 # #1
       @public_topic = Topic.create!(name: RandomData.random_sentences, description: RandomData.random_paragraph)
       @private_topic = Topic.create!(name: RandomData.random_sentences, description: RandomData.random_paragraph, public: false)
     end
 
     describe "visible_to(user)" do
       it "returns all topics if the user is present" do
         user = User.new
 # #2
         expect(Topic.visible_to(user)).to eq(Topic.all)
       end
 
       it "returns only public topics if user is nil" do
 # #3
         expect(Topic.visible_to(nil)).to eq([@public_topic])
       end
     end
   end   
end
