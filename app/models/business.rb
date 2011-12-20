class Business < ActiveRecord::Base
  attr_accessible :name, :description, :due_date, :address, :city, :state, :phone, :url, :latitude, :longitude, :category_ids

  acts_as_gmappable :process_geocoding => false, :lat => "latitude", :lng => "longitude" 

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  # belongs_to :created_by, :class_name => "User", :foreign_key => 
  #                    "created_by"

  has_many :reviews
  accepts_nested_attributes_for :reviews
  
  has_many :reviewers, :through => :reviews

  has_many :categorizations
  has_many :categories, :through => :categorizations
  accepts_nested_attributes_for :categorizations
                  
  validates :name,  :presence => true,
                    :length   => { :maximum => 150 }
                    
  # validates :created_by,  :presence => true

  def full_address
    "#{self.address}, #{self.city}, #{self.state}"
  end

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}, #{self.city}, #{self.state}"
  end
  
  def gmaps4rails_infowindow
    # add here whatever html content you desire, it will be displayed when users clicks on the marker
    "#{self.name}" 
  end

end
