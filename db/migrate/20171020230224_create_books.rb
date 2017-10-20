class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :synopsis
      t.string :publisher
      t.integer :average_rating
      t.string :country

      t.timestamps
    end
  end
end
