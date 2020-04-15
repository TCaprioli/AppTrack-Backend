class User < ApplicationRecord
    has_many :applications, dependent: :destroy
    has_many :resumes, dependent: :destroy
    has_many :folders


    validates_uniqueness_of :email
    validates_presence_of :email
    validates :password, :presence => true,
                       :length => {:within => 3..12},
                       :on => :create
    has_secure_password
end
