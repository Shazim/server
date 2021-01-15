class CreateSocialLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :social_links do |t|
      t.references :user
      t.string :link
      t.timestamps
    end
  end
end
