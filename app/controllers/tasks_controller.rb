class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find_by(id: params[:id])
        render json: task
    end

    def create 
        task = Task.new(task_params)
        if task.save 
            render json: task
        else
            render json: { error: task.errors.messages }, status: 422     #unprocessable entity error
        end

    end

    def update 
        task = Task.find_by(id: params[:id])
        if Task.update(task_params)
            render json: task
        else
            render json: { error: task.errors.messages }, status: 422
        end
        
    end

    def destroy
        task = Task.find_by(id: params[:id])
        if task.destroy
            head :no_content
        else
            render json: { error: task.errors.messages }, status: 422 
        end
        
    end

    private

    def task_params
        params.require(:task).permit(:project_id, :start, :end, :note, :status)
    end


end
