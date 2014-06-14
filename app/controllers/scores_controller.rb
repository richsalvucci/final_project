class ScoresController < ApplicationController
  def index 

    @scores = Score.all

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
end
