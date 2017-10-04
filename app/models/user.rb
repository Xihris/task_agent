class User < ApplicationRecord
  devise :database_authenticatable, :authentication_keys => [:name]
  devise :registerable,
         :recoverable, :rememberable, :validatable
    has_many :units
    has_many :temp_tasks

  validates :name, presence: true, format:{ :with => /[а-яА-Я]+/ }


  def email_required?
    false
  end

  def email_changed?
    false
  end



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
