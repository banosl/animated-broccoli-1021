require 'rails_helper'

RSpec.describe "Doctor Show Page", type: :feature do
  before :each do
    load_test_data
  end
  describe "visiting a doctor's show page" do
    it "see all the doc's info including name, speciality, university they got their doctorate at" do
      visit doctor_path(@doctor_1.id)

      expect(page).to have_content("Dr. #{@doctor_1.name}")
      expect(page).to have_content("Specialty: #{@doctor_1.specialty}")
      expect(page).to have_content("MD from: #{@doctor_1.university}")
      expect(page).to_not have_content("#{@doctor_2.name}")
      expect(page).to_not have_content("#{@doctor_3.name}")
    end

    it "see name of the hospital the doctor works at" do
      visit doctor_path(@doctor_2.id)

      expect(page).to have_content("Works at #{@doctor_2.hospital.name}")
      expect(page).to_not have_content("Works at #{@hospital_2.name}")
    end
    it "see names of all of their patients"
  end
end