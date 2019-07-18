class UsersController < ApplicationController

    def index
        @users = User.all 

        render :json => @users
    end

    def user_clients
        @user = User.all.find{|user| user.id == params[:id].to_i}
        @clients = @user.clients

        render :json => @clients
    end
end
