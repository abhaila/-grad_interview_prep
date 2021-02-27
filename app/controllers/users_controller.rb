class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @courses = @user.courses
    @bookings = @user.bookings
    @orders = @user.orders
  end
end
