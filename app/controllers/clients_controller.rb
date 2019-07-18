class ClientsController < ApplicationController

    def create
        @client = Client.create!(client_params)

        render :json => @client.user
    end
    

    private

    def client_params
        params.require(:client).permit(:name, :email, :phone, :user_id)
    end
end
