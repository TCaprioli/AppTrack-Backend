class ResumesController < ApplicationController
    def index
        resumes = Resume.all
        render json: resumes
    end

    def create
        resume = Resume.create(resume_params)
       
        render json: resume
    end

    
    private
    def resume_params
        params.permit(:user_id, :document)
    end
end
