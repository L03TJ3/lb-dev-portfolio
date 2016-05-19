class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :signed_in_admin?, only: [:new, :create, :edit, :update]
  helper_method :are_you_admin?

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html {redirect_to projects_path,
                     notice: 'Project was successfully added'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  protected

    # Redirects to root when accessing pages when not signed in as admin
    def signed_in_admin?
      if current_user.email == "laurenceweening@gmail.com" && "test@example.com"
        return
      else
        message = "Sorry you are not allowed to go there!"
        flash[:alert] = message
        redirect_to root_path
      end
    end

    # Checks if users is admin to show or hide admin functionalities
    def are_you_admin?
      if current_user.email == "laurenceweening@gmail.com" && "test@example.com"
        return true
      end
    end

    def project_params
      params.require(:project).permit(:title, :description, :image, :github,
                                      :heroku)
    end
end
