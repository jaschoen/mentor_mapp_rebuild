class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :email
      t.string :industry
      t.string :location
      t.string :new
      t.string :create

      t.timestamps null: false
    end
  end
end
