require 'rails_helper'

RSpec.describe "Hospital Show Page", type: :feature do
  before :each do
    load_test_data
  end
  describe "visiting a hospital's show page" do
    it "see hospital name and names of all doctors that work at the hospital" do
      visit hospital_path(@hospital_1.id)

      expect(page).to have_content("#{@hospital_1.name}")
      expect(page).to have_content("#{@doctor_1.name}")
      expect(page).to have_content("#{@doctor_2.name}")
    end

    it "next to each doctor is the number of patients associated with them"

    it "list of doctors is organized by most number of patients to least number of patients"
  end
end