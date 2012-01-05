class SearchesController < ApplicationController

  def new
    @subtitle = "Search"
    @businesses ||= find_businesses
    @json = @businesses.to_gmaps4rails
  end

  private

  def find_businesses
    
    if !params[:search_near].blank? && !params[:category_id].blank?
      Business.joins(:categories).where( conditions ).near(params[:search_near], 50, :order => :distance).includes(:reviews)
    elsif !params[:category_id].blank?
      Business.joins(:categories).where( conditions ).includes(:reviews)
    elsif !params[:search_near].blank?
      Business.where( conditions ).near(params[:search_near], 50, :order => :distance).includes(:reviews)
    else 
      Business.where( conditions ).includes(:reviews)
    end
  end

  def keyword_conditions
    ["businesses.name like ? OR businesses.description like ?", "%#{params[:search_for]}%","%#{params[:search_for]}%"] unless params[:search_for].blank?
  end

  def category_conditions
    [" categories.id = ? ", params[:category_id]] unless params[:category_id].blank?
  end


  def conditions
    [conditions_clauses.join(' AND '), *conditions_options] 
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
    private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end

end
