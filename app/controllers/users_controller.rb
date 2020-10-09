class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create 
        user = User.new(user_params)
        if user.save 
            render json: user
        else
            render json: { error: user.errors.messages }, status: 422     #unprocessable entity error
        end

    end

    def update 
        user = User.find_by(id: params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: { error: user.errors.messages }, status: 422
        end
        
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user.destroy
            head :no_content
        else
            render json: { error: user.errors.messages }, status: 422 
        end
        
    end

    private

    def user_params
        params.require(:user).permit(:business_name, :first_name, :last_name, :address, :email, :password)
    end

#add options as 2nd argument for index, show, update methods to provide associated data
    # def options
    #     @options ||= { include: %i[appointments] }
    # end
end
