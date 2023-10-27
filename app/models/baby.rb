class Baby < ApplicationRecord
  has_many :baby_sessions, dependent: :destroy
  # Add any other associations or validations here
end
