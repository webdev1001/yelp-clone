class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = 
    @restaurant.reviews.create(params[:review].permit(:body))
    redirect_to '/restaurants'
  end
end
