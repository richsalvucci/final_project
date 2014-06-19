class Handicap < ActiveRecord::Base
  # def calculate_handicap
  #   @round = Round.find params[:round_id]
  #   @user_round = UserRound.find params [:user_round_id] 
  #   @course = Course.find params [:course_id]


  #   @gross = @round.scores.sum(:score)

    
  #   if @user_round.tee == Back
  #     @rating = @course.back_tee_rating
  #     @slope = @course.back_tee_slope
  #   elsif @user_round.tee == Middle
  #     @rating = @course.middle_tee_rating
  #     @slope = @course.middle_tee_slope
  #   elsif @user_round.tee == Front
  #     @rating = @course.front_tee_rating
  #     @slope = @course.front_tee_slope
  #   elsif @user_round.tee == Forward
  #     @rating = @course.forward_tee_rating
  #     @slope = @course.forward_tee_slope

  #   @handicap_diff = (@gross - @rating) * 113/@slope
  # end
end

