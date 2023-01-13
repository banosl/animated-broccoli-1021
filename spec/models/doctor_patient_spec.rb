require 'rails_helper'

RSpec.describe DoctorPatient, type: :model do
  describe "relationships" do
    it {should belong_to :doctor}
    it {should belong_to :patient}
  end

  describe "class methods" do
    before :each do
      load_test_data
    end
    it 'can find a doctor patient from a doctors id and patient id combo' do
      expect(DoctorPatient.find_by_doctor_and_patient_id(@doctor_1.id, @patient_1.id)).to eq(@doctor_patient_1)
      expect(DoctorPatient.find_by_doctor_and_patient_id(@doctor_3.id, @patient_4.id)).to eq(@doctor_patient_7)
      expect(DoctorPatient.find_by_doctor_and_patient_id(@doctor_4.id, @patient_1.id)).to eq(@doctor_patient_9)
    end
  end
end