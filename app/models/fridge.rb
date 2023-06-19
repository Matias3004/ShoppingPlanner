class Fridge < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: true

  has_many :fridge_elements
end
