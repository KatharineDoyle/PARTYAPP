class ReviewsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @space = Space.find(params[:space_id])
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
