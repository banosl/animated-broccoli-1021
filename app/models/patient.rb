class Patient < ApplicationRecord
  has_many :doctor_patients, dependent: :destroy
  has_many :doctors, through: :doctor_patients

  validates_presence_of :name
  validates_presence_of :age
end
