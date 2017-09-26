class Department < ApplicationRecord
    
  def self.department_select
    Department.all.map {|department| [department.short_department, department.id]}
  end
    
end
