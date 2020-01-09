class RemoveType1FromArtworks < ActiveRecord::Migration[6.0]
  def change

    remove_column :artworks, :type, :string
  end
end
