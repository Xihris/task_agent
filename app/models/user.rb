class User < ApplicationRecord
    has_many :units
    has_many :temp_tasks
end
