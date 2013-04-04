class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :overview
      t.string :subject_tag
      t.string :city
      t.string :country
      t.string :continent
      t.string :partner_organizations

      t.timestamps
    end
  end
end
