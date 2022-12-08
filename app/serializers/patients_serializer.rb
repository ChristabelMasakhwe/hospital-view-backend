class PatientsSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
end
