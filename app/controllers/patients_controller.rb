class PatientsController < ApplicationController
  def index
    @adult_patients = Patient.adults.alphabetically
  end
end