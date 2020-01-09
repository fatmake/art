class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :type
      t.string :date
      t.string :price
      t.references :Artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
