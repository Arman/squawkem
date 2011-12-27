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

  def avg_speed
    !self.reviews.blank? ? (self.reviews.average(:speed)): "N/A"
  end

  def avg_quality
    !self.reviews.blank? ? (self.reviews.average(:quality)): "N/A"
  end

  def avg_usability
    !self.reviews.blank? ? (self.reviews.average(:usability)): "N/A"
  end

  def avg_affordability
    !self.reviews.blank? ? (self.reviews.average(:affordability)): "N/A"
  end

  def avg_warranty
    !self.reviews.blank? ? (self.reviews.average(:warranty)): "N/A"
  end

  def avg_kindness
    !self.reviews.blank? ? (self.reviews.average(:kindness)): "N/A"
  end

  def avg_review
    if self.reviews.blank? 
      "N/A" 
    else
      (self.reviews.average(:speed)+ self.reviews.average(:quality) + self.reviews.average(:usability) +
        self.reviews.average(:affordability) + self.reviews.average(:warranty) + self.reviews.average(:kindness)).round(1)
    end
  end                          

end
