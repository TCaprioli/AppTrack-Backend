class FolderItemsController < ApplicationController

    def index
        folder_items = FolderItem.all
        render json: folder_items
    end

    def create
        folder_item = FolderItem.create(folder_item_params)
        render json: folder_item.folder_for
    end


    def destroy
        folder_item = FolderItem.find(params[:id])
        folder_item.destroy
    end

    
    private
    def folder_item_params
        params.permit(:folder_id,:application_id)
    end

    
end
