class AddLeadershipWellbeingManagementToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :leadership, :string
    add_column :profiles, :management, :string
    add_column :profiles, :wellbeing, :string
  end
end
