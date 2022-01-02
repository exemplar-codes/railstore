class UserController < ApplicationController
    def index
        user = User.new
        user.name = user.email = "Check"
        user.isadmin = true
        # @users = User.all
        @users = [user, user]
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
    end

    def new
    end
end
