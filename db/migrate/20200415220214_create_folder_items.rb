class CreateFolderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :folder_items do |t|

      t.timestamps
    end
  end
end
