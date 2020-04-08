class ApplicationsController < ApplicationController
    def index
        applications = Application.all
        render json: applications
    end

    def create
        application = Application.create(application_params)
        render json: application
    end

    def destroy
        application = Application.find(params[:id])
        application.destroy
    end
    
    private
    def application_params
        params.permit(:title,:company,:description,:user_id)
    end
end
