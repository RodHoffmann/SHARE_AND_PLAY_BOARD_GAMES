class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit destroy]

    #test
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

  # def accept
  #   @booking = Booking.find(params[:id])
  #   @booking.status = "Accepted"
  #   @booking.save
  #   @booking.game.update(available: false)

  #   flash[:success] = "Booking request has been accepted."
  #   redirect_to games_path
  # end

  # def reject
  #   @booking = Booking.find(params[:id])
  #   @booking.status = "Decline"
  #   @booking.save

  #   @booking.user.notifications.create(
  #     message: "Your booking request for #{booking.game.name} has been rejected.",
  #     link: game_path(@booking.game)
  #   )

  #   flash[:success] = "Booking request has been rejected."
  #   redirect_to root_path
  # end

  def create

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @game = Game.find(params[:game_id])
    @booking.game = @game
    respond_to do |format|
      if @booking.save
        Notification.create(user: @booking.game.user, game: @game, status: false)
        format.html { redirect_to profile_path, notice: 'Booking was successfully created.' }
        format.html { redirect_to booking.game.user.profile_path, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
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
    params.require(:booking).permit(:start_date, :end_date, :game_id, :user_id)
  end
end
