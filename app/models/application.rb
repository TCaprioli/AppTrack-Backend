class Application < ApplicationRecord
    belongs_to :user
    has_many :resapps, dependent: :destroy
    has_many :resumes, through: :resapps
    has_many :folder_items, dependent: :destroy
    has_many :folders, through: :folder_items

   def self.month_for
        self.all.filter do |app| 
            if !app.applied 
                app.created_at.month == Date.today.month
            else
                app.applied.slice(5,2).to_i == Date.today.month
            end
        
        end
   end
   

end
