class TempTasksController < ApplicationController
  def new
    @temp = TempTask.new
    @author = Author.new
    @user = User.new
  end

  def create
    @temp = TempTask.new(temp_params)
    @temp.save
    redirect_to new_unit_path
  end
  
  private
  def temp_params
    params.require(:temp_task).permit(:companys, :date_start, :date_end, :author_id, :user_id)
  end
  
end
