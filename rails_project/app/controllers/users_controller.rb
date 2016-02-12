class UsersController < ApplicationController
  def create
    @user = User.create! params[:user]
    Notifier.send_welcome @user.id
    Notifier.notify_admin_of_new_member @user.id
  rescue ActiveRecord::RecordInvalid
    render :new
  end
end

