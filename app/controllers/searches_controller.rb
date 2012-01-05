class SearchesController < ApplicationController

  def new
    @subtitle = "Search"
    @businesses ||= find_businesses
    @json = @businesses.to_gmaps4rails
  end

  private

  def find_businesses
    
    if !params[:search_near].blank? && !params[:category_id].blank?
      Business.contains_keyword(params[:search_for]).in_category(params[:category_id]).near_location(params[:search_near]).includes(:reviews)
    elsif !params[:category_id].blank?
      Business.contains_keyword(params[:search_for]).in_category(params[:category_id]).includes(:reviews)
    elsif !params[:search_near].blank?
      Business.contains_keyword(params[:search_for]).near_location(params[:search_near]).includes(:reviews)
    else 
      Business.contains_keyword(params[:search_for]).in_category(params[:category_id]).near_location(params[:search_near]).includes(:reviews)
    end
  end

end
