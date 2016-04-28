#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples, inverse_of: :users
  has_many :albums
end
