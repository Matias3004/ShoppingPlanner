class User < ApplicationRecord

    validates :email, presence: true, uniqueness: true, length: {minimum:6, maximum:30}
    validates :name, presence: true
end
