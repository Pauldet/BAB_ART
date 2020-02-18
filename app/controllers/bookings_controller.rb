class BookingsController < ApplicationController


  def index
    @bookings = Booking.where(id: current_user)
    @pending_bookings = Booking.where(id: current_user, status: 'pending')
  end

  def show
    @booking = booking.find(params[:id])
  end

  # def update
  #   @user = current_user


  #   if booking.status = 'pending'
  #      status =
  #     on va cherche status (confirmed or canceled)
  #   elsif status = 'confirmed'
  #     on va chercher, review, rating
  #   end
  #   @booking = booking.find(params[:id])
  # end

  def new
    @piece_of_art = PieceOfArt.find(params[:piece_of_art_id])
    @booking = Booking.new()

  end


  def create
    @booking = Booking.new(params_booking)
    @booking.piece_of_art_id = params[:piece_of_art_id]
    @booking.user_id = current_user.id
    @booking.status = 'pending'
    @booking.number_of_days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = @booking.number_of_days * @booking.piece_of_art.daily_price
    @booking.save
    redirect_to user_path(current_user)

  end


private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
