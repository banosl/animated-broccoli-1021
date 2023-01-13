require 'rails_helper'

RSpec.describe Doctor do
  describe "relationships" do
    it {should belong_to :hospital}
    it {should have_many :doctor_patients}
    it {should have_many(:patients).through(:doctor_patients)}
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :specialty}
    it {should validate_presence_of :university}
  end

  describe "instance methods" do
    before :each do
      load_test_data
    end

    describe "#patient_count" do
      it "returns total number of patients for a doctor" do
        expect(@doctor_1.patient_count).to eq(3)
        expect(@doctor_2.patient_count).to eq(2)
        expect(@doctor_5.patient_count).to eq(5)
      end
    end
  end
end
