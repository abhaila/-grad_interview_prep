class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def show
    @booking = Booking.new
  end


  #use pundit to only allow admin to do these methods
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course.destroy
    redirect_to root_path
  end

  def set_course
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:name, :type, :paid, :description, :example)
  end

end
