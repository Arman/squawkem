class HomeController < ApplicationController
   
  def index
    
    @subtitle = "Home"

    @top_categories = Category.all.sort! { |a,b| b.businesses.size <=> a.businesses.size }.take(6)

    @categories = Category.order(:name)

    @new_businesses = Business.order(:created_at).take(10)
  
  end

end
