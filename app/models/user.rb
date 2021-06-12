class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :reports

  def username
    self.email.split(/@/).first
  end

  def to_s
    email
  end


  def first_name
    self.username.split('.').first
  end

  def last_name
    self.username.split('.').last
  end


  has_many :reports
end
