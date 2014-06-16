class Round < ActiveRecord::Base
  belongs_to :course
  has_many :user_rounds
  has_many :scores
  has_many :users, through: :user_rounds
  accepts_nested_attributes_for :user_rounds, allow_destroy: true

  TEE =[ "Back",
    "Middle",
    "Front",
    "Forward"
  ] 


  validate :foursome

  def total_score
    self.scores.sum(:score)
  end 

  def round_front
    self.scores.score[0..8].sum(:score)
  end

  def round_back
    self.scores.score[9..17].sum(:score)
  end 

  def foursome
    p '*'*100
    p self.user_rounds
    p self.user_rounds.length
    p '*'*100
    if self.user_rounds.length >= 4
      errors.add(:you,  "can only have four golfers")
    end
  end
end
