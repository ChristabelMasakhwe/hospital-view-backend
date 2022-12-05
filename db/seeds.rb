patient1 = Patient.create(name:"Sarah Owino", email: "sarahowino22@gmail.com", password_digest: "sarahowino2022.")
patient2 = Patient.create(name:"Johnson Kiplagat", email: "johnkiplagat20@gmail.com", password_digest: "JOHNKiplagat2000.")

hospital1 = Hospital.create(name: "Moi Teaching and Referral Hospital", image_url: "https://cdn.standardmedia.co.ke/images/thursday/alyvijcbifw8sz1fg635fbfda5f6aeac.jpg", bed_capacity:500, beds_available: 280)
hospital2 = Hospital.create(name: "Kakamega County Teaching and Referral Hospital", image_url: "https://lh3.googleusercontent.com/y03S-NcxCEowhJ_PX-wzwH50TQy-8yqw02l3Y-QKFsKIo26DlkCaLeQr10mm5fXtDdmJYPpuydD7Go6_Eq6S-sHm05jmxA=s1200", bed_capacity:200, beds_available: 80)
hospital3 = Hospital.create(name: "Mbagathi Hospital Nairobi County", image_url: "https://nnmedia.nation.africa/uploads/2019/08/Mbagathi-Hospital-1320x742.jpg", bed_capacity:350, beds_available: 120)

admission1 = Admission.create(date:04/12/2022, hospital_id: 2, patient_id: 1)
admission2 = Admission.create(date:13/12/2022, hospital_id: 2, patient_id: 2)
admission3 = Admission.create(date:10/12/2022, hospital_id: 1, patient_id: 1)


