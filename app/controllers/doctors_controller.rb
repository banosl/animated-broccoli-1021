class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
    @patients = @doctor.patients
  end

  def destroy
    doctor = Doctor.find(params[:id])
    doctor_patient = DoctorPatient.find_by_doctor_and_patient_id(params[:id],params[:patient])
    doctor_patient.destroy
    redirect_to doctor_path(doctor.id)
  end
end