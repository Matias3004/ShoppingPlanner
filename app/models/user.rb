class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true, length: {minimum:3, maximum:20}
  validates :email, presence: true, uniqueness: true, length: { minimum: 6, maximum: 30 }
  validates :password, presence: true, length: { minimum: 6 }
end