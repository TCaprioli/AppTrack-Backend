class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
