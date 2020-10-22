require 'pry'

class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects

    end

    def show
        project = Project.find_by(id: params[:id])
        render json: project
    end

    def create
        project = Project.new(project_params)
        project.user_id = Project.last.user_id if params["user_id"] == nil
        project.save!
        if project
            
            # binding.pry
            user = User.find(project.user_id)
            render json: user
        else 
            render json: { error: project.errors.messages }, status: 422
        end

    end

    def update 
        project = Project.find_by(id: params[:id])
        # project.user_id = Project.last.user_id if params["user_id"] == nil
        if project.update(project_params)
            user = User.find(project.user_id)
            render json: user
        else
            render json: { error: project.errors.messages }, status: 422
        end
        
    end

    def destroy
        # binding.pry
        project = Project.find(params[:id])
        user = User.find(project.user_id)
        if project.destroy
            render json: user
        else 
            render json: { error: project.errors.messages }, status: 422
        end

    end

    private

    def project_params
        params.require(:project).permit(:user_id, :client_id, :name, :description, :amount, :paid, :start, :end, :status)
    end

end

