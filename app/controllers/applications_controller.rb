class ApplicationsController < ApplicationController
    def index
        applications = Application.all
        render json: applications
    end

    def show
        application = Application.find(params[:id])
        render json: application
    end

    def create
        application = Application.create(application_params)
        render json: application
    end

    def update
        application = Application.find(params[:id])
        application.update(application_params)
        render json: application

    end

    def destroy
        application = Application.find(params[:id])
        application.destroy
    end
    
    private
    def application_params
        params.permit(:title,:company,:description,:user_id,:applied)
    end
end
