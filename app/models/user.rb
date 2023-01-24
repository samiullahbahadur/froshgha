class User < ApplicationRecord
    has_secure_password
 validates :fullname,  presence: true, uniqueness: true
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true , uniqueness: true, length:{maximum:105},
                 format:{with:VALID_EMAIL_REGEX} 
                         
end
