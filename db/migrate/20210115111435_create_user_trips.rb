class CreateUserTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :user_trips do |t|
      t.references :user
      t.string :trip
      t.boolean :completed
      t.timestamps
    end
  end
end
