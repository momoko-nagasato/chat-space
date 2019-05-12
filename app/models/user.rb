class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #一旦コメントアウトdevise :database_authenticatable, :registerable,
         #一旦コメントアウト:recoverable, :rememberable, :validatable
end
