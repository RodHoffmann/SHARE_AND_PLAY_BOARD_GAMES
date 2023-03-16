class GamesController < ApplicationController
  before_action :set_game, only: %i[show destroy edit update]

  def index

    if params[:query].present?
      @games = Game.search_by_name_and_category(params[:query])
    else
      @games = Game.all
    end
    @markers = @games.map do |game|
      {
        lat: game.user.latitude,
        lng: game.user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { game: }),
        marker_html: render_to_string(partial: 'marker', locals: { game: })
      }
    end
  end


  def show
    @game = Game.find(params[:id])
    @booking = Booking.new
    if flash[:notice]
      # Display the flash message
      @notice = flash[:notice]
      flash.delete(:notice)
    end
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path, notice: "Game was successfully created."

    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @game.update(game_params)
      redirect_to profile_path, notice: "Game was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to profile_path, notice: "Game was successfully destroyed."
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :category, :description, :number_players, :day_price, :average_duration, :image)
  end
end
