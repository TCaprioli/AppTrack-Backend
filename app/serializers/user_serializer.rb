class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :applications, :resumes
end
