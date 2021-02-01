class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = policy_scope(Course)
  end

  def show
    @booking = Booking.new
  end

  #use pundit to only allow admin to do these methods
  def new
    @course = Course.new
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    authorize user

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

  private

  def set_course
    @course = Course.find(params[:id])
    authorize @course
  end

  def course_params
    params.require(:course).permit(:name, :course_type, :paid_material, :description, :example_question, :photo, :files)
  end
end
