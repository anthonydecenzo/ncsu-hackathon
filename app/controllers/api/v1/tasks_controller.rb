class Api::V1::TasksController < ApplicationController
  #before_action :set_task
  def show
    @task = Task.find(params[:id])
    render json: {
      id: @task.id,
      name: @task.name,
      water: @task.water
    }
  end

  def index
    @tasks = Task.all
    json_response(@tasks)
  end

  def create
    @task = Task.create!(task_params)
    json_response(@task, :created)
  end

  def updated
    @task.update(task_params)

    #head :no_content
  end

  private

    def set_task
      #@task = Task.find(params[:id])
    end

    def task_params
      params.permit(:name, :user_id)
    end
end
