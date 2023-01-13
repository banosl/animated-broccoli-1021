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

    it "see the names in ascending alphabetical order (A-Z)" do
      visit patients_path
      
      expect(@patient_5.name).to appear_before(@patient_7.name)
      expect(@patient_7.name).to appear_before(@patient_6.name)
      expect(@patient_6.name).to appear_before(@patient_1.name)
      expect(@patient_1.name).to appear_before(@patient_3.name)
      expect(@patient_3.name).to appear_before(@patient_4.name)
      expect(@patient_4.name).to_not appear_before(@patient_7.name)
      expect(@patient_3.name).to_not appear_before(@patient_1.name)
    end
  end
end