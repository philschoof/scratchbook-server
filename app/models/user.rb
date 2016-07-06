#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples, inverse_of: :users
  has_many :albums, dependent: :destroy
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  validates :email, presence: true
  validates :username, presence: true
  validates :email, uniqueness: { scope: :username }
  validates :username, uniqueness: true
end
