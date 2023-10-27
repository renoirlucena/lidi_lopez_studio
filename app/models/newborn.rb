class Newborn < ApplicationRecord
  has_many :newborn_sessions, dependent: :destroy
  # Add any other associations or validations here
end
