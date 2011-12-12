class Review < ActiveRecord::Base

  attr_accessible :speed, :quality, :usability, :affordability, :warranty, :kindness, :comments

  belongs_to :business
  belongs_to :reviewer, :class_name => "User", :foreign_key => 
                      "reviewer_id"

  validates :reviewer,  :presence => true
  validates :business,  :presence => true  

end
