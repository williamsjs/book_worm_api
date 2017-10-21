class RenameBookGenreBookImageTables < ActiveRecord::Migration[5.1]
  def change
    rename_table :bookgenres, :book_genres
    rename_table :bookimages, :book_images
  end
end
