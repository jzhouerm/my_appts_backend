class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: ClientSerializer.new(clients, options).serialized_json
    end

    def show
        client = Client.find_by(id: params[:id])
        render json: ClientSerializer.new(client, options).serialized_json
    end

    def create 
        client = Client.new(client_params)
        if client.save 
            render json: ClientSerializer.new(client).serialized_json
        else
            render json: { error: client.errors.messages }, status: 422     #unprocessable entity error
        end

    end

    def update 
        client = Client.find_by(id: params[:id])
        if client.update(client_params)
            render json: ClientSerializer.new(client, options).serialized_json
        else
            render json: { error: client.errors.messages }, status: 422
        end
        
    end

    def destroy
        client = Client.find_by(id: params[:id])
        if client.destroy
            head :no_content
        else
            render json: { error: client.errors.messages }, status: 422 
        end
        
    end

    private

    def client_params
        params.require(:client).permit(:first_name, :last_name, :phone, :email)
    end

#add options as 2nd argument for index, show, update methods to provide associated data
    def options
        @options ||= { include: %i[appointments] }
    end


end
