class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  belongs_to :tvshow
end
