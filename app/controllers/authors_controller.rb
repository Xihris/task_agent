class AuthorsController < ApplicationController
     def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
    # redirect_to new_temp_task_path
  end

  def show
    @author = Author.find(params[:id])
    # @units = Unit.where(author_id: params[:id])
    # @department = Department.all
  end

  # def department
  #   @authors = Author.where(id: params[:id], department_id: params[:department_id])
  # end

  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
    @author = Author.find params[:id]
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render 'edit'
    end
  end

  private
  def author_params
    params.require(:author).permit(:name, :phone, :department_id, :photo)
  end
end
