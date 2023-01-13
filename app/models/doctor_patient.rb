class DoctorPatient < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def self.find_by_doctor_and_patient_id(doctor, patient)
    DoctorPatient.where(doctor_id:doctor,patient_id:patient).first
  end
end