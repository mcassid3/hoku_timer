class Runner < ApplicationRecord
  belongs_to :team
  has_many :appointments
  has_many :legs, through: :assignments
end
