class ApplicationController < ActionController::API
    def home
        render json:'Home!'
    end
end
