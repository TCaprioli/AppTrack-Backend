class AddDocumentToResume < ActiveRecord::Migration[6.0]
  def change
    add_column :resumes, :document, :string
  end
end
