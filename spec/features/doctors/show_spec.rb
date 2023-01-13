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

    it "see names of all of their patients" do
    visit doctor_path(@doctor_3.id)

      within "#patients" do
        expect(page).to have_content(@patient_1.name)
        expect(page).to have_content(@patient_3.name)
        expect(page).to have_content(@patient_4.name)
        expect(page).to_not have_content(@patient_2.name)
      end
    end

    it "next to each patient's name is a button to remove the patient from the doctor's caseload" do
      visit doctor_path(@doctor_4.id)

      within "#patients" do
        expect(page).to have_button("Remove #{@patient_1.name} from caseload")
        expect(page).to have_button("Remove #{@patient_4.name} from caseload")
      end
    end

    describe "when the button is clicked for one patient" do
      it "user is brought back to the doctor show page and patient is no longer listed" do
        visit doctor_path(@doctor_4.id)
save_and_open_page
        within "#patients" do
          expect(page).to have_button("Remove #{@patient_1.name} from caseload")
          expect(page).to have_button("Remove #{@patient_4.name} from caseload")
        end

        click_button "Remove #{@patient_1.name} from caseload"
save_and_open_page
        within "#patients" do
            expect(page).to_not have_content(@patient_1.name)
            expect(page).to have_content(@patient_4.name)
        end
      end

      it "when user visits a different doctor's page that had the same patient, the patient is still there"
    end
  end
end