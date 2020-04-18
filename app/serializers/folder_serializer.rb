class FolderSerializer < ActiveModel::Serializer
  attributes :id, :name, :folderItems
  def folderItems
    self.object.folder_items
  end
end
