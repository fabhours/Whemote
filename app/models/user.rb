class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  has_many :appliances 
=======
  has_many :appliances
>>>>>>> fixauth
end
