class UsersController < ApplicationController
  # POST /users
  #
  def create
    @user = User.create! params[:user]
  rescue ActiveRecord::RecordInvalid
    render :new
  end
end

