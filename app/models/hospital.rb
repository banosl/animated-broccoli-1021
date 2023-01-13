class Hospital < ApplicationRecord
  has_many :doctors
  has_many :doctor_patients, through: :doctors
end
