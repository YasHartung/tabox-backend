class ProjectsController < ApplicationController

    def create
        @project = Project.create!(project_params)

        render :json => @project.user
    end
    
    def show
        @project = Project.find(params[:id])

        render :json => @project
    end

    def destroy
        @project = Project.find(params[:id])
        @user = @project.user
       
         Project.delete(params[:id])
        
         render :json => @user
    end
    private

    def project_params
        params.require(:project).permit(:name, :user_id)
    end
end
