class UsersController < ApplicationController
  def show
    @tasks = Task.all.order(:scheduled_date).order(:title)

    @first_date = @tasks.first.scheduled_date
    @last_date = @tasks.last.scheduled_date
  end
end
