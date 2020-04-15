class ResumeSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :name, :document
  end
  