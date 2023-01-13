def load_test_data
  @hospital_1 = Hospital.create!({name: "Grey Sloan Memorial Hospital"})
  @hospital_2 = Hospital.create!({name: "Seaside Health & Wellness Center"})

  @doctor_1 = @hospital_1.doctors.create!({name: "Meredith Grey", specialty: "General Surgery", university: "Harvard University"})
  @doctor_2 = @hospital_1.doctors.create!({name: "Alex Karev", specialty: "Pediatric Surgery", university: "Johns Hopkins University"})
  @doctor_3 = @hospital_2.doctors.create!({name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University"})
  @doctor_4 = @hospital_2.doctors.create!({name: "Derek McDreamy", specialty: "Attending Surgeon", university: "University of Pennsylvania"})

  @patient_1 = Patient.create!({name: "Katie Bryce", age: 24})
  @patient_2 = Patient.create!({name: "Denny Duquette", age: 2})
  @patient_3 = Patient.create!({name: "Rebecca Pope", age: 39})
  @patient_4 = Patient.create!({name: "Zola Shepherd", age: 32})

  @doctor_patient_1 = DoctorPatient.create!({doctor_id: @doctor_1.id, patient_id: patient_1.id })
  @doctor_patient_8 = DoctorPatient.create!({doctor_id: @doctor_3.id, patient_id: patient_1.id })
  @doctor_patient_2 = DoctorPatient.create!({doctor_id: @doctor_1.id, patient_id: patient_2.id })
  @doctor_patient_3 = DoctorPatient.create!({doctor_id: @doctor_1.id, patient_id: patient_4.id })
  @doctor_patient_4 = DoctorPatient.create!({doctor_id: @doctor_2.id, patient_id: patient_2.id })
  @doctor_patient_5 = DoctorPatient.create!({doctor_id: @doctor_2.id, patient_id: patient_3.id })
  @doctor_patient_6 = DoctorPatient.create!({doctor_id: @doctor_3.id, patient_id: patient_3.id })
  @doctor_patient_7 = DoctorPatient.create!({doctor_id: @doctor_3.id, patient_id: patient_4.id })
  @doctor_patient_9 = DoctorPatient.create!({doctor_id: @doctor_4.id, patient_id: patient_1.id })
  @doctor_patient_10 = DoctorPatient.create!({doctor_id: @doctor_4.id, patient_id: patient_4.id })
end