class HomeController < ApplicationController
   
  def index
    @subtitle = "Home"
    if params[:search].present? && params[:search_near].present?
      @businesses = Business.near(params[:search], 50, :order => :distance)
      @list_header = "There are " + @businesses.count.count.to_s + " businesses nearby."
    else
      @businesses = Business.all
      @list_header = "Showing all " + @businesses.count.to_s + "  businesses."
    end
    @json = @businesses.to_gmaps4rails
  end

end
