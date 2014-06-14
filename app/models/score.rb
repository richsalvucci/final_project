class Score < ActiveRecord::Base
  belongs_to :round
  belongs_to :user
  belongs_to :user_rounds
end
