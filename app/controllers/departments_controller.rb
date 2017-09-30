class DepartmentsController < ApplicationController
  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
      if @department.valid?
        @department.save

        # respond_to do |format|
        #   format.html # index.html.erb
        #   format.xml  { render xml: @department}
        #   format.json { render json: @department}
        # end
        # render template: "units/_add_departament.html.erb"
      # else
        # render :template => 'units/_add_departament.html.erb'
      end
         # @department.reload
  end

  def index
    @departments = Department.all
  end

  private
  def department_params
    params.require(:department).permit(:full_department, :short_department)
  end

end