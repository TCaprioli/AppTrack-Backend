class FoldersController < ApplicationController
   

    def index
        folders = Folder.all
        render json: folders
    end

    def create
        folder = Folder.create(folder_params)
        render json: folder
    end


    def destroy
        folder = Folder.find(params[:id])
        folder.destroy
    end
    
    private
    def folder_params
        params.permit(:user_id,:name)
    end

    
end
