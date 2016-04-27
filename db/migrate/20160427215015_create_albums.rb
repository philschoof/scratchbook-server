class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :cover
      t.text :description
      t.text :thoughts
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
