class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @user = current_user
    @bookings = []
    Booking.all.each do |booking|
      if booking.game.user == current_user
        @bookings << booking
      end
    end
  end
end
