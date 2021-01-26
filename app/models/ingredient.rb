class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :cocktail, through: :doses
  has_many :doses
end
