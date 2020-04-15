class Resume < ApplicationRecord
    belongs_to :user
    has_many :resapps, dependent: :destroy
    has_many :applications, through: :resapps
    mount_base64_uploader :document, DocumentUploader
end
