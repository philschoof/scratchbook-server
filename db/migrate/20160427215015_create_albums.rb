#
class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.string :cover
      t.text :description
      t.text :thoughts
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :albums, [:title, :artist], unique: true
  end
end
