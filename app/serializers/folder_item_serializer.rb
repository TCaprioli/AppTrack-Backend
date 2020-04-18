class FolderItemSerializer < ActiveModel::Serializer
  attributes :id, :application, :folder
  def application
    self.object.application
  end

end
