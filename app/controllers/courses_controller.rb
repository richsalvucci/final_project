class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def show
    @holes = @course.holes.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    redirect_to courses_path
  end

  def edit
    
  end

  def update
    @course.update_attributes course_params
    redirect_to courses_path
  end

  def destroy
    @course.delete
    redirect_to courses_path
  end
private
  def find_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name,
      :tee_one_slope,
      :tee_one_rating,
      :tee_two_slope,
      :tee_two_rating,
      :tee_three_slope,
      :tee_three_rating,
      :tee_four_slope,
      :tee_four_rating,
      holes_attributes: [:id,
        :course_id, 
        :hole_number,
        :par,
        :tee_back_yardage,
        :tee_middle_yardage,
        :tee_front_yardage,
        :tee_forward_yardage,
        :mens_handicap,
        :womens_handicap,
        :_destroy])
  end
end
