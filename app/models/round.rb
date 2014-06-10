class Round < ActiveRecord::Base
  belongs_to :course
  has_many :user_rounds
  has_many :users, through: :user_rounds
  accepts_nested_attributes_for :user_rounds, allow_destroy: true

  TEE =[ "Back",
    "Middle",
    "Front",
    "Forward"
  ] 

  validate :foursome

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
