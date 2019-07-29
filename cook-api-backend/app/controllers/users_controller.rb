class UsersController < ApplicationController
  def index
    users = User.all
    render JSON
  end

  def show
    user = User.find(params[:id])
    render JSON
  end
end
