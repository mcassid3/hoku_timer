class Leg < ApplicationRecord
  has_many :assignments
  has_many :runners, through: :assignments
end
