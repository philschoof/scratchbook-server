class AddAlbumToUser < ActiveRecord::Migration
  def change
    add_reference :users, :album, index: true, foreign_key: true
  end
end


# flip this
#
# add nested routes
#
