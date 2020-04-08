class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :title
      t.string :company
      t.string :description
      t.string :status, default: "waiting"
      t.belongs_to :user

      t.timestamps
    end
  end
end
