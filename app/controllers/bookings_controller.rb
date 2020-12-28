class BookingsController < ApplicationController
  before_action :find_booking, only: [:show]
  before_action :find_course, only: [:create]
  before_action :find_user, only: [:create, :index]

  def index
    @my_bookings = current_user.bookings.where.order(deadline: :desc)
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.course = @course
    if @booking.save!
      redirect_to bookings_path
    else
      render '/courses/show'
    end
  end

  private

  def find_user
    @user = current_user
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_course
    @course = Course.find(params[:course_id])
  end

  def booking_params
    params.require(:booking)
  end
end
