class Department < ApplicationRecord
  validates :full_department, presence: true, format:{ :with => /[а-яА-Я]+/ }

  before_save :short

  def short
    self.short_department = full_department.split(' ').delete_if{ |x| x.length < 3}.map{|x| x.to_s.chars.first}.join('').mb_chars.upcase
  end

  def self.department_select
    Department.all.map {|department| [department.short_department, department.id]}
  end

end
