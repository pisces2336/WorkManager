class TasksController < ApplicationController
  def new
    @task = Task.new
    @work = Work.find(params[:work_id])

    if @work.user != current_user
      redirect_to user_path
    end
  end

  def edit
    @task = Task.find(params[:id])
    @work = Work.find(params[:work_id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to work_path(@task.work)
    else
      @work = Work.find(params[:work_id])
      render :new
    end
  end

  def update
  end

  def destroy
    Task.find(params[:id]).destroy

    work = Work.find(params[:work_id])
    redirect_to work_path(work)
  end

  private
  def task_params
    params.require(:task).permit(:title, :scheduled_date, :due_date).merge(work_id: params[:work_id])
  end
end
