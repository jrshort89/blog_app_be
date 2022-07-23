class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          render json: "Logged in successfully"
        else
          render json: "There was something wrong with your login details"
        end
      end
    
      def destroy
        session[:user_id] = nil
        render json: "Successfully logged out!"
      end

end
