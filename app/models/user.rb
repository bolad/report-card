class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #has_many :projects

  def username
    self.email.split(/@/).first
  end

  def to_s
    email
  end

  has_many :reports
end
