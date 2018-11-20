class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    # @spaces = Space.all
    @restaurants = policy_scope(Space)
  end

  def show
    @space = Space.find(params[:id])
    @space = Space.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to @space, notice: 'Restaurant was successfully created.'
    else
      render 'new'
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :capacity, :availabilty, :photo)
  end
end
