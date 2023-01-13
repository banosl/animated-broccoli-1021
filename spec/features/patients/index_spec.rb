require 'rails_helper'

RSpec.describe "Patients Index Page", type: :feature do
  describe "visiting patient index page" do
    before :each do
      load_test_data
    end

    it "see names of all adult patients (age > 18)" do
      visit patients_path

      expect(page).to have_content(@patient_1.name)
      expect(page).to have_content(@patient_3.name)
      expect(page).to have_content(@patient_4.name)
      expect(page).to have_content(@patient_5.name)
      expect(page).to have_content(@patient_6.name)
      expect(page).to have_content(@patient_7.name)
      expect(page).to_not have_content(@patient_2.name)
      expect(page).to_not have_content(@patient_8.name)
    end

    it "see the names in ascending alphabetical order (A-Z)"
  end
end