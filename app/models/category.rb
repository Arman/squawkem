class Category < ActiveRecord::Base
	
  has_many :categorizations
  has_many :businesses, :through => :categorizations

end
