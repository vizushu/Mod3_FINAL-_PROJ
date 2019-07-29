class IngredientsController < ApplicationController

    def index
        ingredient = Ingredient.all
        render JSON
    end

    def show
        ingredient = Ingredient.find(params[:id])
        render JSON
    end

    def create
        ingredient = Ingredient.new(name: params[:name])
        if Ingredient.save
            render JSON: ingredient
        else 
            render JSON: {message: 'Error saving name'}
        end
    end

    def destroy
        ingredient = Trainer.find(params[:id])
        ingredient.delete
    end
end
