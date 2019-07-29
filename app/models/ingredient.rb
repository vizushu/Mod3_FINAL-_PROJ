class Ingredient < ApplicationRecord
    has_many :users, through: :dishes
    has_many :recipes, through: :dishes
end
