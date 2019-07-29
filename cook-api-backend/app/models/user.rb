class User < ApplicationRecord
    has_many :ingredients, through: :dishes
    has_many :recipes, through: :dishes
end
