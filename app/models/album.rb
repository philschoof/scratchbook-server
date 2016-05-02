#
class Album < ActiveRecord::Base
  belongs_to :user, inverse_of: :albums

  validates :title, presence: true
  validates :artist, presence: true

end
