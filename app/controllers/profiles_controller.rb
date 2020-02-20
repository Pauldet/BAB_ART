class ProfilesController < ApplicationController


  def show
  @user = current_user
  @piece_of_arts = @user.piece_of_arts
  @bookings = @user.bookings
    @pending_bookings = @user.bookings.where(status: 'pending')
    @approved_bookings = @user.bookings.where(status: 'approved')
    @ongoing_bookings = @user.bookings.where(status: 'ongoing' )
    @past_bookings = @user.bookings.where(status: 'terminated')
    @declined_bookings = @user.bookings.where(status: 'declined')
  end
end
