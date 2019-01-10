class API::UsersController < ApplicationController

    def index
        @users = User.all
        respond_to do |f|
            f.html {render :index}
            f.json {render json: @recipes}
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to landing_path
        else
        
            render :new
        end
    end

    

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end