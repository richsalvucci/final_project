class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def show
    @hole = @course.holes.sort_by(&:hole_number)
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
      :back_tee_slope,
      :back_tee_rating,
      :middle_tee_slope,
      :middle_tee_rating,
      :front_tee_slope,
      :front_tee_rating,
      :forward_tee_slope,
      :forward_tee_rating,
      holes_attributes: [:id,
        :course_id, 
        :hole_number,
        :par,
        :back_tee_yardage,
        :middle_tee_yardage,
        :front_tee_yardage,
        :forward_tee_yardage,
        :mens_handicap,
        :womens_handicap,
        :_destroy])
  end
end
