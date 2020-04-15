class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end
end
