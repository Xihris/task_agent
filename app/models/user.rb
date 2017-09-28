class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :units
    has_many :temp_tasks
    
  
  def self.user_select
    User.all.map {|user| [user.name, user.id]}
  end  
  
  def self.user_out
    User.where(in_out: true).user_select
  end
  
  def self.admin
    User.where(role: 0).where(branch_id: 0).user_out
  end
  
  # scope :admin, -> { where(branch_id: 0) }
  
  # def self.user_sel
  #   user_select.where(in_out: true)
  # end  
  
  # def user
  #   @user = User.all.map{ |user| [user.name, user.id] }
  # end
  
  # scope :pub, -> { where(complete: false) }
end
