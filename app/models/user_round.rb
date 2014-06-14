class UserRound < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  has_many :scores

  after_create :create_scores
  
  def create_scores
    p self
    p self.user
    18.times do 
      self.scores.create({user_id: self.user.try(:id), round_id: self.round.id, user_name: self.user.name})
    end
  end
end
