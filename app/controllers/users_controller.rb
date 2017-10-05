class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where(user_id: params[:id], complete: false).order(:date_end)
  end

  def index
  end

  def edit
    @users = User.all
  end

  def admin
    @users = User.all
  end

end
