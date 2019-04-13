class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  private
  def task_params
    params.require(:task).permit(:name)

  end
end
