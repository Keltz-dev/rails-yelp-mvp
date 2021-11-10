class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_review_params)
    restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = restaurant
    if @review.save
      redirect_to restaurant_path(restaurant)
    else
      render :new
    end
  end

  private

  def strong_review_params
    params.require[:review].permit[:content, :rating]
  end
end
