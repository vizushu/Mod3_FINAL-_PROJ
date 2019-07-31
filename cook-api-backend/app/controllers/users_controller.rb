class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]

    end

    def show
        user = User.find(params[:id])
        render json: users, except: [:created_at, :updated_at]
    end

    def create
        user = User.new(name: params[:name])
        if user.save
            render json: user, except: [:created_at, :updated_at]
        else
            render json: {message: 'Error saving name'}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.delete
    end

end
