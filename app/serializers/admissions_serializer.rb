class AdmissionsSerializer < ActiveModel::Serializer
  attributes :id, :condition, :date, :patient_id, :hospital_id
end
