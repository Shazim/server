class CreateUserExpertises < ActiveRecord::Migration[6.1]
  def change
    create_table :user_expertises do |t|
      t.references :user
      t.references :expertise
      t.timestamps
    end
  end
end
