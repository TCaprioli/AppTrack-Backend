class Resume < ApplicationRecord
    belongs_to :user
    mount_base64_uploader :document, DocumentUploader
end
