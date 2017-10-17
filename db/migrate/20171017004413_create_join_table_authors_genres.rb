class CreateJoinTableAuthorsGenres < ActiveRecord::Migration[5.1]
  def change
    create_join_table :authors, :genres do |t|
      t.index [:author_id, :genre_id]
      t.index [:genre_id, :author_id]
    end
  end
end
