class PartidosController < ApplicationController
  def new
  end

  def index
    @partidos= Partido.all
  end

  def show
    @partido= Partido.find_by(id: params[:id])
    @playerslist = PlayerList.find_by(id: @partido.id)
  end

  def create
    partido = Partido.new(opponent: params[:opponent],
                      date: params[:date],
                      time: params[:time])
   if partido.save
     redirect_to partidos_path
   else
     redirect_to new_partido_path
   end
  end

  def edit
    @partido = Partido.find_by(id: params[:id])
  end

  def update
    partido = Partido.find_by(id: params[:id])
    partido.update(opponent: params[:opponent])
    partido.update(date: params[:date])
    partido.update(time: params[:time])

    redirect_to partidos_path
  end

  def destroy
  end
end
