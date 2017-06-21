class UnitsController < ApplicationController
    def new
    @temps = TempTask.last
    a = JSON.parse(@temps.to_json).to_a.shift(7)
    a[1][1].split(/; /).map{|item| Unit.create(
    {'unit': item, 'id_temp_task': a[0][1], 'date_start': a[2][1], 'date_end': a[3][1],
    'author_id': a[4][1], 'user_id': a[5][1] }
    )}
    @temps.destroy
    redirect_to units_path
  end

  def show
    @unit = Unit.find params[:id]
  end
  
  def complite
    @unit = Unit.find params[:id]
    if @unit.update(unit_params)
      redirect_to units_path
    else
      render 'complite'
    end
  end
  
  def search
    @searchs = if params[:term]
      Unit.where('unit LIKE ?', "%#{params[:term]}%")
    else
      Unit.all
    end
  end

  def index
    @units = Unit.where(complete: false).order(:date_end)
    @users = User.all
  end
  
  def edit
    @unit = Unit.find params[:id]
  end
  
  def group
    @units = Unit.where(id_temp_task: params[:id])
  end
  
  def complite
    @unit = Unit.find params[:id]
  end
  
  def update
    @unit = Unit.find params[:id]
    if @unit.update(unit_params)
      redirect_to units_path
    else
      render 'edit'
    end
  end
  
   private
   
  def unit_params
    params.require(:unit).permit(:unit, :date_start, :date_end, :date_finish, :author_id, :user_id, :complete, :comment, :sum_ur, :sum_fiz, :id_temp_task)
  end
  
  def search_params
    params.require(:search).permit(:unit, :date_end, :author_id, :user_id, :term, :comment, :sum_ur, :sum_fiz, :id_temp_task)
  end
end
