class Child < ApplicationRecord
  has_many :child_sessions, dependent: :destroy
  # Add any other associations or validations here
end
