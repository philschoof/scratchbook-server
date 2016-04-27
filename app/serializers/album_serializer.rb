class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :cover, :description, :thoughts
  has_one :user
end
