class AddMentorToEvent < ActiveRecord::Migration
  def change
    add_column :events, :mentor, :string
  end
end
