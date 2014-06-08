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
end
