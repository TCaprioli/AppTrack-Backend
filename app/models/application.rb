class Application < ApplicationRecord
    belongs_to :user
    has_many :resapps, dependent: :destroy
    has_many :resumes, through: :resapps


   
end
