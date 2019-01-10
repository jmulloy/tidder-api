class Api::SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user && user.authnticate(params[:password])
            session[:user_id] = user.user_idrender json: user
        else
            render json: { message: "Didnt work. please try again"}, status: 400
        end
    end

    def destroy
        session.clear
        render json: { message: "Log in Successful"}, status: 204
    end
end


