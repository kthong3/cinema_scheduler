class AddUserRefToFilms < ActiveRecord::Migration[5.1]
  def change
    add_reference :films, :admin, index: true
    add_foreign_key :films, :users, column: :admin_id
  end
end
