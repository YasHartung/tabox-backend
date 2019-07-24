class ClientsController < ApplicationController

    def create
        @client = Client.create!(client_params)

        render :json => @client.user
    end
    
    def show
        @client = Client.find(params[:id])

        render :json => @client
    end

    def destroy
        @client = Client.find(params[:id])
        @user = @client.user
       
         Client.delete(params[:id])
        
         render :json => @user
    end
    private

    def client_params
        params.require(:client).permit(:name, :email, :phone, :user_id)
    end
end
