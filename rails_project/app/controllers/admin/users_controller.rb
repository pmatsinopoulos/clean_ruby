module Admin
  class UsersController < ApplicationController
    # POST /admin/users
    #
    def create
      @user = User.create! params[:user]
    rescue ActiveRecord::RecordInvalid
      render :new
    end
  end
end