class DepartmentsController < ApplicationController
  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
      if @department.valid?
         @department.save
         redirect_to new_unit_path
      else
        'new'
end

  private
  def department_params
    params.require(:department).permit(:full_department, :short_department)
  end

end