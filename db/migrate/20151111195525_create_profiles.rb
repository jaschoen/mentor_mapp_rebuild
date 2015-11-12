class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.text :bio
      t.string :coach_type
      t.integer :rating
      t.integer :price_low
      t.integer :price_high
      t.string :language
      t.string :certification
      t.string :skills
      t.string :experience
      t.string :email

      t.timestamps null: false
    end
  end
end
