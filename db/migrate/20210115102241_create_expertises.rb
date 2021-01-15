class CreateExpertises < ActiveRecord::Migration[6.1]
  def change
    create_table :expertises do |t|
      t.string :title
      t.timestamps
    end
  end
end
