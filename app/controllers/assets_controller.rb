class AssetsController < ApplicationController
    def show
        @project = Project.find(params[:project_id])
        @asset = @project.assets.find(params[:id])
    end
    
    def create
        @project = Project.find(params[:project_id])
        @asset = @project.assets.build(params[:asset])
        if @asset.save
            redirect_to project_path(@project)
        end
    end
end
