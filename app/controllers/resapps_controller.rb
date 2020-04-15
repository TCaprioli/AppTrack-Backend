class ResappsController < ApplicationController

    def index
        resapps = Resapp.all
        render json: resapps
    end

    def create
        resapp = Resapp.create(resapp_params)
        render json: resapp
    end


    def destroy
        resapp = Resapp.find(params[:id])
        resapp.destroy
    end
    
    private
    def resapp_params
        params.permit(:resume_id,:application_id)
    end
end
