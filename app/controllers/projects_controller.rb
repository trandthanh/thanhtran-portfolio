class ProjectsController < ApplicationController
  def index
    if params[:commit] == "FREELANCE"
      @projects = Project.where(category: "Freelance")
    elsif params[:commit] == "PERSONAL"
      @projects = Project.where(category: "Personal Project")
    else
      @projects = Project.all
    end
  end
end
