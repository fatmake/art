class RemoveTypeFromArtworks < ActiveRecord::Migration[6.0]
  def change

    remove_column :artworks, :type, :string
  end
end
