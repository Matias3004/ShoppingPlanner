class Fridge < ApplicationRecord
  belongs_to :user

  has_many :fridge_elements
end
