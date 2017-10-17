class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.text :bio
      t.date :date_of_birth

      t.timestamps
    end
  end
end
