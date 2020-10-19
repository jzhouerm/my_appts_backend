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
            # binding.pry
            project = Project.find(task.project_id)
            user = User.find(project.user_id)
            render json: user
        else
            render json: { error: task.errors.messages }, status: 422     #unprocessable entity error
        end

    end

    def update 
        task = Task.find_by(id: params[:id])
        project = Project.find(task.project_id)
        user = User.find(project.user_id)
        # binding.pry
        if task.update(task_params)
            render json: user
        else
            render json: { error: task.errors.messages }, status: 422
        end
        
    end

    def destroy
        task = Task.find_by(id: params[:id])
        project = Project.find(task.project_id)
        user = User.find(project.user_id)
        if task.destroy
            render json: user
            # head :no_content
        else
            render json: { error: task.errors.messages }, status: 422 
        end
        
    end

    private

    def task_params
        params.require(:task).permit(:project_id, :start, :end, :note, :status)
    end


end
