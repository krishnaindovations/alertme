class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourite_channels, class_name: 'Favourite', foreign_key: :channel_id
  has_many :channels, through: :favourite_channels

  has_many :favourite_tvshows, class_name: 'Favourite', foreign_key: :tvshow_id
  has_many :tvshows, through: :favourite_tvshows
end
