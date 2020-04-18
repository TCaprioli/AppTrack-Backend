class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :applications, :resumes, :folders
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
  end
end
