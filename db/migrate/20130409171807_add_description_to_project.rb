class AddDescriptionToProject < ActiveRecord::Migration
  def change
      add_column :projects, :summary, :string
      add_column :projects, :community_overview, :text
      add_attachment :projects, :community_image
      add_attachment :projects, :tech_image
      add_column :projects, :quote, :string
  end
end
