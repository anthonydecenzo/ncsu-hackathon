class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)

    @task.user_id = current_user.id
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
    @task = Task.find(params[:id])


  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
        redirect_to @task
    else
        render 'edit'
    end
  end

  def edit
    @task = Task.find(params[:id])

  end

  def from_task_db
      @selectedTask = Task.find(params[:id])

      respond_to do |format|
        format.js
      end
  end

  private
  def task_params
    params.require(:task).permit(:name, :water)

  end

end
