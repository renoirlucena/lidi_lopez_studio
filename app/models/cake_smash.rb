class CakeSmash < ApplicationRecord
  has_many :cake_smash_sessions, dependent: :destroy
  # Add any other associations or validations here
end
