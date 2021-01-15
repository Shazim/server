class CreateUserGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :user_genres do |t|
      t.references :user
      t.references :genre
      t.timestamps
    end
  end
end
