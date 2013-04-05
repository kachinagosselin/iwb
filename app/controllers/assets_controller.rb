class AssetsController < ApplicationController    
    def create
        @project = Project.find(params[:id])
        @asset = @project.assets.build(params[:document])
        if @asset.save
            redirect_to project_path(@project)
            else
            render :action => 'new'
        end
    end
end
