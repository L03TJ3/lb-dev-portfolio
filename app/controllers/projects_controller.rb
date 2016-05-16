class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
  before_action :who_is_admin?, only: [:new, :create]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end


  protected

    def who_is_admin?
      if current_user.id === 1
        return
      else
        message = "Sorry you are not allowed to go there!"
        flash[:alert] = message
        redirect_to root_path
      end
    end

end
