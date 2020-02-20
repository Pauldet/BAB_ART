class BookingsController < ApplicationController


  def index
    # "je suis un propriétaire qui a plusieurs oeuvre dart et je veux voir les bookings associé"
    @piece_of_arts = PieceOfArt.where(user_id: current_user)
    @allbookings = @piece_of_arts.map {|e| Booking.where(piece_of_art: e)}
    # @bookingspending = Bookings.where()
    @bookings = current_user.booked_poa
    @pending_bookings = current_user.booked_poa.map { |booking| booking if booking.status == 'pending'  }.compact






  end

  def show
    @booking = booking.find(params[:id])
  end

  def update
  @user = current_user


  #addevent listener en fonction du boutton je change le status en "confirmed" ou "cancelled"
  #formulaire avec un object booking avec un champ caché qui me met le status

  #   if booking.status = 'pending'
  #      status =
  #     on va cherche status (confirmed or canceled)
  #   elsif status = 'confirmed'
  #     on va chercher, review, rating
  #   end
  #   @booking = booking.find(params[:id])
  # end
  end

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
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

end
