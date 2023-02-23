class WorksController < ApplicationController
  def index
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def edit
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to work_path(@work)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def work_params
    params.require(:work).permit(:client_name, :contact_url, :document_url, :due, :memo).merge(user_id: current_user.id)
  end
end