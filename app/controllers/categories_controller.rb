class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.order_by(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

end
