class FolderItem < ApplicationRecord
    belongs_to :folder
    belongs_to :application

   def folder_for
    self.folder.folder_items
   end
end
