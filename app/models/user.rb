class User < ApplicationRecord
    devise :database_authenticatable, :authentication_keys => [:name]
    has_many :units
    has_many :temp_tasks
end
