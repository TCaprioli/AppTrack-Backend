class ResappSerializer < ActiveModel::Serializer
  attributes :id, :application_id, :resume
  def resume
  {id: self.object.id,
  resume_name: self.object.resume.name,
  resume_id: self.object.resume.id}
  end
 
end
