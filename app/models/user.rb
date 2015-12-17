class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :check_ins
  has_many :games, through: :check_ins
  has_many :sports, through: :check_ins
  has_many :leagues, through: :check_ins
  has_many :teams, through: :check_ins 
  has_many :bars, through: :check_ins
  has_many :images
end
