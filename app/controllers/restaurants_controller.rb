class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @filter_by_options = ["best", "worst", "recent"]
    @reviews = @restaurant.reviews.order(updated_at: :desc)
    filter_by(params[:filter_by])
  end


  private
  def filter_by(filter_by)
    if filter_by == "best"
      @reviews = @restaurant.reviews.order(rating: :desc )
    elsif filter_by == "worst"
      @reviews = @restaurant.reviews.order(:rating)
    elsif filter_by == "recent"
      @reviews = @restaurant.reviews.order(updated_at: :desc)
    end
  end
end
