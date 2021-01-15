class CreateUserLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_locations do |t|
      t.references :user
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :zipcode
      t.timestamps
    end
  end
end
