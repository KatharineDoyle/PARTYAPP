class ReviewsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
