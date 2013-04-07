class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :summary
      t.string :skill
      t.boolean :active

      t.timestamps
    end
  end
end
