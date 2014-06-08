class RoundsController < ApplicationController
  before_filter :find_round, only: [:show, :edit, :update, :destroy]
  def index
    @rounds = Round.all
  end

  def show
    
  end

  def new
    @round = Round.new
    @courses = Course.all
  end

  def create
    @round = Round.create round_params
    redirect_to rounds_path
  end

  def edit
    
  end

  def update
    @round.update_attributes round_params
    redirect_to rounds_path
  end

  def destroy
    @round.delete
    redirect_to rounds_path
  end
private
  def find_round
    @round = Round.find params[:id]
  end
  def round_params
    params.require(:round).permit(:user_id, :course_id, :tee, :front_total, :back_total, :round_total)
  end

end
