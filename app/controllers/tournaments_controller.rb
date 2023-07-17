class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      redirect_to @tournament
    
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def tournament_params
      params.require(:tournament).permit(:name, :format, :game_id, :position, :user_id, :players)
    end
end
