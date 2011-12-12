class ReviewsController < ApplicationController

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review }
    end
  end


  # POST /reviews
  # POST /reviews.json
  def create
    @business = Business.find(params[:business_id])
    @review = @business.reviews.create(params[:review])
    @review.reviewer_id = current_user

    respond_to do |format|
      if @review.save
        flash[:notice] = "Successfully created review."
        format.html { redirect_to business_path(@business) }
        format.js
      else
        flash[:notice] = "There was an error."
        format.html { redirect_to business_path(@business) }
        format.js 
      end
    end
  end

end