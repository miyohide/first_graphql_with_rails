class User < ApplicationRecord
  has_secure_password

  has_many :photos
  has_many :tags
  has_many :in_photos, through: :tags, source: :photo

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
