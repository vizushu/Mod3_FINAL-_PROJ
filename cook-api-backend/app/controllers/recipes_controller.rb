class RecipesController < ApplicationController

    def index 
        recipes = Recipe.all 
        render JSON
    end

    def show
        recipe = Recipe.find(params[:id])
        render JSON
    end

    def create
        recipe = Recipe.new(name: params[:name])
        if recipe.save
            render JSON: recipe
        else 
            render JSON: {message: 'Error saving name'}
        end
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.delete
    end

end
