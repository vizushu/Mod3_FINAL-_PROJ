class User < ApplicationRecord
    has_many :ingredients, through: :dishes
    has_many :recipes, through: :dishes

    validates :name, uniqueness: true
    validates :name, presence: true
end
