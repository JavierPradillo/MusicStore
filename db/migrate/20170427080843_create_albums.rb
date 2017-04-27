class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string     :name
      t.string     :artist
      t.string     :year
      t.text       :description
      t.float      :price
      t.belongs_to :genre, index: true
      t.timestamps
    end
  end
end
