class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @space = @booking.space
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @space = @booking.space
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.booking.space = @space
    if @review.save!
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :booking_id)
  end
end
