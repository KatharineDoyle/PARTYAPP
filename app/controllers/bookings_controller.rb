class BookingsController < ApplicationController
  before_action :find_and_authorize_current_booking, only: [:show, :edit, :update, :destroy]

  def new
    @user = current_user
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      redirect_to space_path(@space)
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    find_and_authorize_current_booking
    @space = booking.space
  end

  private

  def find_and_authorize_current_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :theme, :user_id, :space_id)
  end
end
