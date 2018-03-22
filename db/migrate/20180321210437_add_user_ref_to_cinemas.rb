class AddUserRefToCinemas < ActiveRecord::Migration[5.1]
  def change
    add_reference :cinemas, :admin, index: true
    add_foreign_key :cinemas, :users, column: :admin_id
  end
end