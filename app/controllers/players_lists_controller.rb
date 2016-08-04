class PlayersListsController < ApplicationController
  def new
    @partido = Partido.find(params[:partido_id])
    @playerlist = PlayerList.new
    @players = Player.all
  end

  def get_players_json
      @players = Player.all
      render json: @players
  end

  def create
    my_partido = Partido.find_by(id: params[:partido_id])
    players_list = Player.where(id: [params[:idPlayers]])
    my_partido.player_list = PlayerList.new
    my_partido.player_list.players = players_list

    render json: { redirect_to: url_for(action: :index) }, status: :ok
  end

  def show
    @players = PlayerList.find_by(partido_id: params[:partido_id]).players
  end
  def index
    
  end
end
