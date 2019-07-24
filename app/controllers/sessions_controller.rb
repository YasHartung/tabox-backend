class SessionsController < ApplicationController

    def create
        @session= Session.create!(tabs: params[:tabs], client_id: params[:client_id])
     

        render :json => @session.client.user
    end
end
