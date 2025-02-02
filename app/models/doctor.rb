class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :doctor_patients, dependent: :destroy
  has_many :patients, through: :doctor_patients

  validates_presence_of :name
  validates_presence_of :specialty
  validates_presence_of :university

  def patient_count
    patients.count
  end
end
