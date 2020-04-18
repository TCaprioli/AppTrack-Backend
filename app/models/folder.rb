class Folder < ApplicationRecord
    belongs_to :user
    has_many :folder_items, dependent: :destroy
    has_many :applications, through: :folder_items
end
