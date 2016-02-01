class MountainsController < ApplicationController
  before_action :find_mountain, only: [:show, :edit, :update, :destroy]

  def index
    @mountains = Mountain.all
  end

  def show
  end

  def new
    @mountain = current_user.mountains.new
  end

  def create
    @mountain = current_user.mountains.new(mountain_params)
    if @mountain.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @mountain.update(mountain_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @mountain.destroy
    redirect_to root_path
  end

  private
    def mountain_params
      params.require(:mountain).permit(:name, :elevation, :difficulty, :distance, :notes, :picture)
    end

    def find_mountain
      @mountain = current_user.mountains.find(params[:id])
    end
end
