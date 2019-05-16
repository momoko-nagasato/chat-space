class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #一旦コメントアウトdevise :database_authenticatable, :registerable,
        #一旦コメントアウト:recoverable, :rememberable, :validatable

  has_many :messages
  has_many :group_users
  has_many :groups, through: :group_users

end
