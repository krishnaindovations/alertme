class Tvshow < ApplicationRecord
  belongs_to :channel
  has_many :subscribers, class_name: "Favourite", foreign_key: :tvshow_id
  has_many :users, through: :subscribers

  scope :upcoming, -> (time){ where(telecast_time: Time.now..(Time.now + time))}

  def notify_subscriber
    users.each do |user|
      NotificationMailer.notify_subscriber(user.id, id)
    end
  end
end
