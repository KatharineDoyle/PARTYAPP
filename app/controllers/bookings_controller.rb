class BookingsController < ApplicationController
  before_action :find_and_authorize_current_booking, only: [:show, :edit, :update, :destroy]

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render 'new'
  end

  private

  def find_and_authorize_current_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :theme, :user_id, :spaces_id)
  end
end
