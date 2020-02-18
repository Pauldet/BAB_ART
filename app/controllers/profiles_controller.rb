class ProfilesController < ApplicationController


  def show
  @user = current_user
  @piece_of_arts = @user.piece_of_arts
  end
end
