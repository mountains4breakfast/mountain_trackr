class ProfileController < ApplicationController
  def show
    @all_mountains = Mountain.all
  end

  def edit
  end
end
