#
class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :cover, :description, :thoughts, :created_at
  has_one :user
end
