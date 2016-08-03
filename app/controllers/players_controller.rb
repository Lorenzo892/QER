class PlayersController < ApplicationController
  before_action :authenticate_user!

  def new
    @player = Player.new
  end

  def index
    @players= Player.all
  end

  def show
    @player= Player.find_by(id: params[:id])
  end

  def create

    @player = current_user.players.build(player_params)

   if @player.save
     redirect_to players_path
   else
     render 'new'
   end
  end

  def edit
    @player = Player.find_by(id: params[:id])
  end

  def update
    @player = Player.find_by(id: params[:id])

    if @player.update(player_params)
      redirect_to players_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit!
  end
end
