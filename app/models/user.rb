class User < ApplicationRecord

    has_secure_password

    validates :email, presence: true, uniqueness: true, length: {minimum:6, maximum:30}
    validates :name, presence: true
    validates :password, presence: true, length: { minimum: 6 }
end
