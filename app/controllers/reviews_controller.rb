class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @reviews = Review.all
    @filter_by_options = ["best", "worst", "recent"]
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_path(@review.reviewed_restaurant_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:rating, :summary, :reviewed_restaurant_id, :reviewer_id)
  end
end
