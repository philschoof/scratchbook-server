#
class Album < ActiveRecord::Base
  belongs_to :user, inverse_of: :albums

  validates :title, presence: true
  validates :artist, presence: true
  validates :title, uniqueness: { scope: :artist }
  validates :artist, uniqueness: { scope: :title }
end
