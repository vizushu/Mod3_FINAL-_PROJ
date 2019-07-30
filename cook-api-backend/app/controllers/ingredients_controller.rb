class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all
        render json: ingredients, except: [:created_at, :updated_at]
    end

    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredients, except: [:created_at, :updated_at]
    end

    def create
        ingredient = Ingredient.new(name: params[:name])
        if Ingredient.save
            render json: ingredients, except: [:created_at, :updated_at]
        else
            render json: {message: 'Error saving name'}
        end
    end

    def destroy
        ingredient = Trainer.find(params[:id])
        ingredient.delete
    end
end
