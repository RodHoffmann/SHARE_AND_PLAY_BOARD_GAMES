class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit create destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @game =  Game.find(params[:game_id])
  end

  def edit
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @game =  Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to games_path, notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to profile_path, notice: "Booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to profile_path, notice: "Booking was successfully destroyed."
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
