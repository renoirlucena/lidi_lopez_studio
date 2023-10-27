class Maternity < ApplicationRecord
  has_many :maternity_sessions, dependent: :destroy
  # Add any other associations or validations here
end
