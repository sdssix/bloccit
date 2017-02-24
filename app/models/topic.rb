class Topic < ActiveRecord::Base
   has_many :posts, dependent: :destroy

 # #12
   has_many :labelings, as: :labelable
 # #13
   has_many :labels, through: :labelings
   has_many :comments, dependent: :destroy


end
