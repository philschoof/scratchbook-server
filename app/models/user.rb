#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples, inverse_of: :users
  validates :username, :email, :password
end
