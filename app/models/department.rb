class Department < ApplicationRecord

  validates :full_department, presence: true
  validates :full_department, format:{ :with => /[а-яА-Я ]+/ }

  before_save :short

  def short
    self.short_department = full_department.split(' ').delete_if{ |x| x.length < 3}.map{|x| x.to_s.chars.first}.join('').mb_chars.upcase
  end
end
