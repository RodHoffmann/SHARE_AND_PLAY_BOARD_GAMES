class NotificationsController < ApplicationController
  def accept
    @notification = Notification.find(params[:id])
    @notification.status = true
    @notification.save
    redirect_to profile_path
  end

  def reject
    @notification = Notification.find(params[:id])
    @notification.destroy
    redirect_to profile_path
  end
  def index

  end
end
