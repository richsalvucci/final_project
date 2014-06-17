class UserRound < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  has_many :scores

  after_create :create_scores
  
  def create_scores
    p self
    p self.user
    p self.round.course.holes 
    holes = self.round.course.holes
    holes.each do |h|
      self.scores.create({user_id: self.user.try(:id),
        round_id: self.round.id,
        user_name: self.user_name,
        hole_number: h.hole_number,
        par: h.par,
        back_tee_yardage: h.back_tee_yardage,
        front_tee_yardage: h.front_tee_yardage,
        middle_tee_yardage: h.middle_tee_yardage,
        forward_tee_yardage: h.forward_tee_yardage,
        mens_handicap: h.mens_handicap
      })
    end
  end
end
