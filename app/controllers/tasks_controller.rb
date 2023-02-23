class TasksController < ApplicationController
  def new
    @task = Task.new
    work = Work.find_by_id(params[:work_id])

    if work.nil? || work.user != current_user
      redirect_to user_path
    end

    @task.work = work
  end

  def edit
  end

  def create
    
  end

  def update
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:title, :scheduled_date, :due_date)
  end
end
