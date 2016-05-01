#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples, inverse_of: :users
  has_many :albums

  validates :email, presence: true
  validates :username, presence: true
  validates :email, uniqueness: { scope: :username }
  validates :username, uniqueness: true
end
