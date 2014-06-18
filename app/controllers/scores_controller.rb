class ScoresController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_round
  def index 
    @scores = @round.scores.each do |score|
      {round_id: score.round_id,
          user_id: score.user_id,
          user_name: score.user_name,
          user_round_id: score.user_round_id,
          hole_number: score.hole_number,
          par: score.par,
          back_tee_yardage: score.back_tee_yardage,
          middle_tee_yardage: score.middle_tee_yardage,
          front_tee_yardage: score.front_tee_yardage,
          forward_tee_yardage: score.forward_tee_yardage,
          mens_handicap: score.mens_handicap
        }
    end
    @data = @scores.group_by(&:user_name)
    # p @data
    respond_to do |format|
      format.html
      format.json { render json: @data.as_json }
    end
  end

  def create
    @score = params[:holes].each do |key, value|
      value.each do |score|
       p  score[:score]
       p score[:id]
       dude = @round.scores.find score[:id]
       dude.update_attributes score: score[:score]
      end 
    end


    respond_to do |format|
      format.html 
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
