class ResumesController < ApplicationController
    def index
        resumes = Resume.all
        
        render json: resumes
    end

    def show
        resume = Resume.find(params[:id])
        send_file(
            "#{Rails.root}/public/#{resume.document.url}",
            filename: 'document.pdf',
            type: 'application/pdf'
          )
    end

    def create
        resume = Resume.create(resume_params)
       
        render json:resume
    end

    def update
        resume = Resume.find(params[:id])
        resume.update(resume_params)
        render json: resume

    end

    def destroy
        resume = Resume.find(params[:id])
        resume.destroy
    end

    
    private
    def resume_params
        params.require(:resume).permit(:user_id,:name, :document)
    end
end
