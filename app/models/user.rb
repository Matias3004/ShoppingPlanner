class User < ApplicationRecord
  belongs_to :productList

  has_secure_password

  validates :login, presence: true, uniqueness: true, length: {minimum:3, maximum:20}
  validates :email, presence: true, uniqueness: true
end