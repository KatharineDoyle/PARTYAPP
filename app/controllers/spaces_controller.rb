class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @spaces = Space.all
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
    if @space.save
      redirect_to @space
    else
      render 'new'
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :capacity, :availabilty, :photo)
  end
end
