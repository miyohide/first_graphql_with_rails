class Photo < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :users, through: :tags

  def self.create_with_postedBy(attr)
    user_name = attr.delete(:postedBy)
    user = User.find_by(name: user_name)
    attr.merge!({user: user})
    create(attr)
  end
end
