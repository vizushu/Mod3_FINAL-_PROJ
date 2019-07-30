class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, except: [:created_at, :updated_at]
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipes, except: [:created_at, :updated_at]
    end

    def create
        recipe = Recipe.new(name: params[:name])
        if recipe.save
            render json: recipes, except: [:created_at, :updated_at]
        else
            render json: {message: 'Error saving name'}
        end
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.delete
    end

end
