class AddTypeToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :type, :string
  end
end
