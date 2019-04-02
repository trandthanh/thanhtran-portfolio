class ProjectsController < ApplicationController
  def index
    if params[:search] == "FREELANCE"
      @projects = Project.where(category: "Freelance")
    elsif params[:search] == "PERSONAL"
      @projects = Project.where(category: "Personal Project")
    else
      @projects = Project.all
    end
  end
end
