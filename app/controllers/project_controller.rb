class ProjectController < ApplicationController
  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(detail_params)

    if @project.save
      redirect_to project_index_path
    end
  end

  def index
    @project = Project.all
  end


  private
  def detail_params
    params.require(:project).permit(:id, :name, :fb_share_message, :description)
  end
end
