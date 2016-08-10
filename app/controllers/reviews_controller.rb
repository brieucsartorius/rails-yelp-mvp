class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save!
    redirect_to restaurant_path(@restaurant)

  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
