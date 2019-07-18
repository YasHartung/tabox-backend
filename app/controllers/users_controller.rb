class UsersController < ApplicationController

    def index
        @users = User.all 

        render :json => @users
    end

    def login    
        @user = User.find_or_create_by(username: params[:username])
        render :json => @user
    end

  
end
