class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :length
      t.datetime :release_date
      t.string :rating
      t.references :cinema, foreign_key: true

      t.timestamps
    end
  end
end
