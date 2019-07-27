class TasksController < ApplicationController

    def create
        
        @task = Task.create!(content: params[:content], user_id: params[:taskboard][:user_id], project_id: params[:taskboard][:project_id])
        @ttb = TaskTaskBoard.create!(task_id: @task.id, taskboard_id: params[:taskboard][:id])
        @user = @task.user

        render :json => @user
    end

    def destroy
       
        @task = Task.find(params[:id])
        @user = @task.user
        
         Task.delete(params[:id])
        
         render :json => @user
    end

    def add_to_other_taskboard
      
        @taskboard = Taskboard.find(params[:taskboard_id])
        @ttb = TaskTaskBoard.create!(task_id: params[:task_id], taskboard_id: params[:taskboard_id])
        
        render :json => @taskboard.user
    end


    private
    

end
