class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @spaces = Space.all
    @spaces = policy_scope(Space).order(created_at: :desc)
  end

  def show
    @space = Space.find(params[:id])
    @space = Space.new
  end

  def new
    @user = User.find(params[:user_id])
    @space = Space.new
  end

  def create
    @user = User.find(params[:user_id])
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to @space, notice: 'Space was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @space.update(space_params)
      redirect_to @space, notice: 'Space was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @spaces = Space.find(params[:id])
    @space = Space.destroy
  end

  private

  def set_space
    @space = Space.find(params[:id])
    authorize @space
  end

  def space_params
    params.require(:space).permit(:name, :address, :capacity, :availability, :user_id)
  end
end
