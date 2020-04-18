class Application < ApplicationRecord
    belongs_to :user
    has_many :resapps, dependent: :destroy
    has_many :resumes, through: :resapps
    has_many :folder_items, dependent: :destroy
    has_many :folders, through: :folder_items

    def delete_folder
        
    end

   
end
