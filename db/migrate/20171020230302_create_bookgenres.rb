class CreateBookgenres < ActiveRecord::Migration[5.1]
  def change
    create_table :bookgenres do |t|
      t.references :book, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
