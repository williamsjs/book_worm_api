class CreateBookimages < ActiveRecord::Migration[5.1]
  def change
    create_table :bookimages do |t|
      t.string :link
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
