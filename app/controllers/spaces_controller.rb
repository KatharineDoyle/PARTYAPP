class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_and_authorize_current_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = policy_scope(Space).order(created_at: :desc)
  end

  def new
    @user = current_user
    @space = Space.new
  end

  def create
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
    @space.destroy
  end

  private

  def find_and_authorize_current_space
    @space = Space.find(params[:id])
    authorize @space
  end

  def space_params
    params.require(:space).permit(:name, :address, :capacity, :availability, :user_id)
  end
end
