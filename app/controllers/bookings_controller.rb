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
    if @booking.save!
<<<<<<< HEAD
      redirect_to space_bookings_path, notice: 'Booking was successfully created.'
=======
      redirect_to space_booking_path(@space, @booking), notice: 'Booking was successfully created.'
>>>>>>> 282bcf928deb0e53110c98412700160fa1b2c2d8
    else
      redirect_to space_path(@space)
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    # @space = Space.find(params[:space_id])
  end

  def show
<<<<<<< HEAD
    @booking
=======
    @space = @booking.space
  end

  def destroy
>>>>>>> 282bcf928deb0e53110c98412700160fa1b2c2d8
  end

  private

  def find_and_authorize_current_booking
    @booking = Booking.find(params[:id])
    # authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :theme, :user_id, :space_id)
  end
end
