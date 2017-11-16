class Cocktail < ApplicationRecord
  has_many :ingredients
  has_many :doses
  validates :name, uniqueness: true, presence: true
end
