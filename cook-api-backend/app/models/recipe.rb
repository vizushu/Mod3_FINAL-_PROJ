class Recipe < ApplicationRecord
    has_many :users, through: :dishes
    has_many :ingredients, through: :dishes
end
