class PieceOfArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def index
    @piece_of_arts = PieceOfArt.all
    @piece_of_arts_filtered = PieceOfArt.find(params[:search]) #Doubt on hwo to write params here
  end

  def show
    @piece_of_art = piece_of_arts.find(params[:id])
  end

  def new
    @piece_of_art = PieceOfArt.new()
  end

  def create
    @piece_of_art = PieceOfArt.new(params_poa)
    @piece_of_art.save
    redirect_to user_path(current_user) #creer un nouveau controller
  end

  private

  def params_poa
    params.require(:piece_of_art).permit(:name, :category, :daily_price, :picture, :description, :available_for_sale :buying_price)
  end
end
