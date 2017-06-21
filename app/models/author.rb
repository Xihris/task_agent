class Author < ApplicationRecord
    has_many :temp_tasks
    has_many :units
end
