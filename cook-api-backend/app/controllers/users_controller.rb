class UsersController < ApplicationController

    def index
        users = User.all
        render JSON: users, :include => {:recipe => {:except => [:created_at, :updated_at]} }, :only => [:name, :id]
    end

    def show
        user = User.find(params[:id])
        render JSON: user, :include => {:recipe => {:except => [:created_at, :updated_at]} }, :only => [:name, :id]
    end

    def create
        user = User.new(name: params[:name])
        if User.save
            render JSON: user
        else 
            render JSON: {message: 'Error saving name'}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.delete
    end

end
