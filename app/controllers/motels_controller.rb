class MotelsController < ApplicationController
  def show
  end

  def index
    @user = current_user
    @motels = @user.motels
  end
end
