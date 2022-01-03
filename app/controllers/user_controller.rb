class UserController < ApplicationController
    def index
        user = User.new
        user.username = user.email = "Check"
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

    def create
        if User.find(params[:email]) == nil
            user = User.new
            user.username = params[:username]
            user.isadmin = params[:isadmin]

            user.save
            flash[:success] = "New user created"
        flash[:failure] = "Email already exists"
    end
end
