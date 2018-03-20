class CreateScreenings < ActiveRecord::Migration[5.1]
  def change
    create_table :screenings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
