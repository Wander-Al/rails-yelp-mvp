class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = @review.restaurant
    if @review.save
      redirect_to review_path(@review)
    else
      redirect_to restaurant_path(@restaurant), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
