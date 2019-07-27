class TaskboardsController < ApplicationController

    def create
        
        @taskboard = Taskboard.create!(name: params[:name], user_id: params[:user_id], project_id: params[:project_id])
        @user = @taskboard.user
        
        render :json => @user
    end

    def destroy
        @user = User.find_by(id: params[:user_id])
         Taskboard.delete(params[:id])
        
         render :json => @user
    end
end
