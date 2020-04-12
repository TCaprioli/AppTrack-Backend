class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :company, :description, :created_at, :applied
 

end
