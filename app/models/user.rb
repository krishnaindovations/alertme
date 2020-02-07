class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourite_tvshows, class_name: 'Favourite', foreign_key: :user_id
  has_many :tvshows, through: :favourite_tvshows
end
