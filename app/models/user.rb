class User < ApplicationRecord
  has_many :photos
  has_many :tags
  has_many :in_photos, through: :tags, source: :photo
end
