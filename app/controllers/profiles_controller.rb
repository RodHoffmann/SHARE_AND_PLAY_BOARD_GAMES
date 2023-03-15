class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @user = current_user
    @notifications = Notification.where(user_id: @user.id)
  end
end
