class TasksController < ApplicationController

    def create
        
        @task = Task.create!(content: params[:content], user_id: params[:taskboard][:user_id], client_id: params[:taskboard][:client_id])
        @ttb = TaskTaskBoard.create!(task_id: @task.id, taskboard_id: params[:taskboard][:id])
        @user = @task.user

        render :json => @user
    end


    private
    

end
