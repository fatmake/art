class AddImgToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :img, :string
  end
end
