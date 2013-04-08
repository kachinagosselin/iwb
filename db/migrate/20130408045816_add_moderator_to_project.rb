class AddModeratorToProject < ActiveRecord::Migration
  def change
    add_column :projects, :moderator_id, :integer
  end
end
