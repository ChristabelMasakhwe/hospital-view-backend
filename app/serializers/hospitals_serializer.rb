class HospitalsSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :bed_capacity, :beds_available
end
