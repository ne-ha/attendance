class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable,:confirmable , :authentication_keys => [:login]

  # attr_accessible :email, :password, :password_confirmation

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  
end
