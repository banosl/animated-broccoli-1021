require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe "relationships" do
    it {should have_many :doctor_patients}
    it {should have_many(:doctors).through(:doctor_patients)}
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
  end

  describe "class methods" do
    before :each do
      load_test_data
    end
    it 'reuturns only patients age 18 or older' do
      expect(Patient.adults).to match([@patient_1, @patient_3, @patient_4, @patient_5, @patient_6, @patient_7])
    end
  end
end