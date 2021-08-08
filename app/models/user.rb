class User < ApplicationRecord
    has_many :reviews

    has_secure_password

    validates :email, uniqueness: true
    validates :password, length: { minimum: 5 }
end
