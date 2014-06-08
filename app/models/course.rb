class Course < ActiveRecord::Base
  has_many :rounds
  has_many :holes
  accepts_nested_attributes_for :holes, allow_destroy: true
end
