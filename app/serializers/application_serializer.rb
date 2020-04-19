class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :company, :description, :created_at, :applied, :resapps, :folder_items
  def resapps
    self.object.resapps.map do |resapp|
      {id: resapp.id,
      resume_name: resapp.resume.name,
      resume_id: resapp.resume.id
      }
    end
  end
 

end
