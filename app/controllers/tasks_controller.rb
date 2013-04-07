class TasksController < ApplicationController

  def show
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
  end

  def edit
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
  end

  def new
      @project = Project.find(params[:project_id])
      @task = @project.tasks.build(params[:task])
  end
    
  def create
      @project = Project.find(params[:project_id])
      @task = @project.tasks.build(params[:task])
      if @task.save
        redirect_to project_path(@project)
      end
  end
end
