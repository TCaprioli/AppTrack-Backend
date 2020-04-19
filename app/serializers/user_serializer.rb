class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :applications, :resumes, :folders, 
    def folders
      self.object.folders.map do |folder|
        {
          id: folder.id,
          name: folder.name,
          folderItems: folder.folder_items.map do |fi| {
            id:fi.id,
            application:fi.application
          }
        end
        }
      end
    end#end of def folders

    def applications
      self.object.applications.map do |app| {
        id: app.id,
        title: app.title,
        company: app.company,
        description: app.description,
        status: app.status,
        created_at: app.created_at,
        applied: app.applied,
        folder_items: app.folder_items
      }
      end
    end

end
