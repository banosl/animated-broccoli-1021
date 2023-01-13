def load_test_data
  @hospital_1 = Hospital.create!({name: "Grey Sloan Memorial Hospital"})
  @hospital_2 = Hospital.create!({name: "Seaside Health & Wellness Center"})

  @doctor_1 = @hospital_1.doctors.create!({name: "Meredith Grey", specialty: "General Surgery", university: "Harvard University"})
  @doctor_2 = @hospital_1.doctors.create!({name: "Alex Karev", specialty: "Pediatric Surgery", university: "Johns Hopkins University"})
  @doctor_3 = @hospital_2.doctors.create!({name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University"})
  @doctor_4 = @hospital_2.doctors.create!({name: "Derek McDreamy", specialty: "Attending Surgeon", university: "University of Pennsylvania"})

  @patient_1 = Patient.create!({name: "Katie Bryce", age: 24})
  @patient_1 = Patient.create!({name: "Denny Duquette", age: 2})
  @patient_1 = Patient.create!({name: "Rebecca Pope", age: 39})
  @patient_1 = Patient.create!({name: "Zola Shepherd", age: 32})
end