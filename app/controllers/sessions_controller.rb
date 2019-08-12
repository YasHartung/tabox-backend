class SessionsController < ApplicationController

    def create

        @session= Session.create!(session_params)
     

        render :json => @session.project.user
    end
    

    def destroy
        
        @session = Session.find(params[:id])
        @user = @session.project.user 
        Session.delete(@session.id)
        
        
         render :json => @user
    end


    private 
    
    def session_params
        params.require(:session).permit(:tabs, :project_id, :comment)
    end
end
