class ContactForm < ApplicationRecord
  class ContactForm < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :desired_appointment_date, presence: true
  end
end
