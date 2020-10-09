class AppointmentsController < ApplicationController

    def index
        appointments = Appointment.all
        # render json: AppointmentSerializer.new(appointments).serialized_json
        render json: appointments

    end

    def show
        appointment = Appointment.find_by(id: params[:id])
        render json: appointment
    end

    def create
        appointment = Appointment.new(appointment_params)

        if appointment.save 
            render json: appointment
        else 
            render json: { error: appointment.errors.messages }, status: 422
        end

    end

    def update 
        appointment = Appointment.find_by(id: params[:id])
        if appointment.update(appointment_params)
            render json: appointment
        else
            render json: { error: appointment.errors.messages }, status: 422
        end
        
    end

    def destroy
        appointment = Appointment.find(params[:id])

        if appointment.destroy
            head :no_content
        else 
            render json: { error: appointment.errors.messages }, status: 422
        end

    end

    private

    def appointment_params
        params.require(:appointment).permit(:user_id, :service_id, :client_id, :start, :end, :note, :status)
    end

end

