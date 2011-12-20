class Categorization < ActiveRecord::Base
	attr_accessible :category_id, :business_id

  belongs_to :category
  belongs_to :business

  default_scope order('name ASC')

end