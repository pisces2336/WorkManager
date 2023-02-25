class UsersController < ApplicationController
  def show
    @tasks = Task.all.order(:scheduled_date).order(:title)

    if @tasks.size > 0
      @first_date = @tasks.first.scheduled_date
      @last_date = @tasks.last.scheduled_date
    else
      @first_date = 0
      @last_date = -1
    end
  end
end
