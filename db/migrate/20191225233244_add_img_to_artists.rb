class AddImgToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :img, :string
  end
end
