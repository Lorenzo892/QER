class LineupsController < ApplicationController
  def new
    byebug

    @players_list= PlayerList.find_by(id: params[:players_list_id])
    @players=@players_list.players
  end
end
