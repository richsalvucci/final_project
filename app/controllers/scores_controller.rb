class ScoresController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_round
  def index 
    @scores = {round_id: @round.scores.first.round_id,
          user_id: @round.scores.first.user_id,
          user_name: @round.scores.first.user_name,
          user_round_id: @round.scores.first.user_round_id,
          hole_number: @round.scores.first.hole_number,
          par: @round.scores.first.par,
          back_tee_yardage: @round.scores.first.back_tee_yardage,
          middle_tee_yardage: @round.scores.first.middle_tee_yardage,
          front_tee_yardage: @round.scores.first.front_tee_yardage,
          forward_tee_yardage: @round.scores.first.forward_tee_yardage,
          mens_handicap: @round.scores.first.mens_handicap
        }
    p @scores
    respond_to do |format|
      format.html
      format.json { render json: @scores.as_json }
    end
  end

  def create
    @score = Score.create score_params

    respond_to do |format|
      format.json { render json: @score.as_json }
    end
  end

  def update
    @score = Score.find params[:id]
    @score.update_attributes score_params 

    respond_to do |format|
      format.json { render json: @score.as_json }
    end
  end

  def destroy
    @score = Score.find params[:id]
    @score.delete 

    respond_to do |format|
      format.json { render json: @score.as_json }
    end
  end  
private
  def score_params
    params.require(:score).permit(:score, :user_id, :round_id, :user_name)  
  end

  def find_round

    @round = Round.find params[:round_id]
  end
end
