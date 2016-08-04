class LineupsController < ApplicationController
  def new
    @players_list= PlayerList.find_by(id: params[:players_list_id])
    @players=@players_list.players
  end
  def create
    my_partido = Partido.find_by(id: params[:partido_id])
    my_player_list = PlayerList.find_by(id: params[:players_list_id])
    players_list = Player.where(id: [params[:idPlayers]])
    my_partido.player_list.lineup = Lineup.new
    my_partido.player_list.lineup.players = players_list

    render json: { redirect_to: url_for(action: :index) }, status: :ok

  end

end
