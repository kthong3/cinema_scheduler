class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :day
      t.datetime :open
      t.datetime :close
      t.references :cinema, foreign_key: true

      t.timestamps
    end
  end
end
