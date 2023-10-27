class Family < ApplicationRecord
  has_many :family_sessions, dependent: :destroy
  # Add any other associations or validations here
end
