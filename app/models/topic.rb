class Topic < ActiveRecord::Base
   has_many :posts, dependent: :destroy

 # #12
   has_many :labelings, as: :labelable
 # #13
   has_many :labels, through: :labelings

   scope :publically_viewable, -> { where(public: true) }
   scope :privately_viewable, -> { where(public: true) }

   scope :visible_to, -> (user) { user ? all : publically_viewable }


end
