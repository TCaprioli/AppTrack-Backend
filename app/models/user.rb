class User < ApplicationRecord
    has_many :applications, dependent: :destroy
    has_many :resumes, dependent: :destroy


    validates_uniqueness_of :email
    validates_presence_of :email, :password
    has_secure_password
end
