class SessionsController < ApplicationController

    def home
    end

    def create
        @user = User.find_by(username: params[:username])

        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path
       else
           message = "Something went wrong! Please check your username and password and try again!"
           redirect_to login_path, notice: message 
       end
    end

end
