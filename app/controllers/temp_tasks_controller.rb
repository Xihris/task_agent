class TempTasksController < ApplicationController
  def new
    @temp = TempTask.new
    # @author = Author.new
    # @user = User.new
  end

  def create
    @temp = TempTask.new(temp_params)
    if @temp.valid?
      @temp.save
      redirect_to new_unit_path
    else
      'new'
    end
  end

  private
  def temp_params
    params.require(:temp_task).permit(:companys, :date_start, :date_end, :author_id, :user_id, :branch_id)
  end

end
