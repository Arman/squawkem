class SearchController < ApplicationController

  def index
    @subtitle = "Search"

    if params[:search]
      if !params[:search_for].blank? && !params[:search_near].blank?
        @businesses = Business.where("name like ? OR description like ?","%#{params[:search_for]}%","%#{params[:search_for]}%").near(params[:search_near], 50, :order => :distance).includes(:reviews)
      elsif !params[:search_for].blank?
        @businesses = Business.where("name like ? OR description like ?","%#{params[:search_for]}%","%#{params[:search_for]}%").includes(:reviews)
      elsif !params[:search_near].blank?
        @businesses = Business.near(params[:search_near], 50, :order => :distance).includes(:reviews)
      else 
        @businesses = Business.all
      end
      @list_header = "Showing search results"
    else
      @businesses = Business.all
      @list_header = "Showing all businesses"
    end
    @json = @businesses.to_gmaps4rails
  end

end
