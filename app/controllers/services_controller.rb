class ServicesController < ApplicationController
    def index
        services = Service.all
        render json: services
    end

    def show
        service = Service.find_by(id: params[:id])
        render json: service
    end

    def create 
        service = Service.new(service_params)
        if service.save 
            render json: service
        else
            render json: { error: service.errors.messages }, status: 422     #unprocessable entity error
        end

    end

    def update 
        service = Service.find_by(id: params[:id])
        if service.update(service_params)
            render json: service
        else
            render json: { error: service.errors.messages }, status: 422
        end
        
    end

    def destroy
        service = Service.find_by(id: params[:id])
        if service.destroy
            head :no_content
        else
            render json: { error: service.errors.messages }, status: 422 
        end
        
    end

    private

    def service_params
        params.require(:service).permit(:name, :description, :amount)
    end

#add options as 2nd argument for index, show, update methods to provide associated data
    # def options
    #     @options ||= { include: %i[appointments] }
    # end
end
