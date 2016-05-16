class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

end
