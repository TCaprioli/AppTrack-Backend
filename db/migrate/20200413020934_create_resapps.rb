class CreateResapps < ActiveRecord::Migration[6.0]
  def change
    create_table :resapps do |t|
      t.belongs_to :resume
      t.belongs_to :application

      t.timestamps
    end
  end
end
