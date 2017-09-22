class Author < ApplicationRecord
    has_many :temp_tasks
    has_many :units
    
    validates :name, :phone, :department_id, presence: true
end
