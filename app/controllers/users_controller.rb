class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    # @decks = Deck.all
    # authorize @decks
    # @bookings = @user.bookings
    # @orders = @user.orders
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :photo)
  end
end
