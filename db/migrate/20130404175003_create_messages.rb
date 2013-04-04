class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to_user_id
      t.string :from_user_id
      t.string :title
      t.text :content
      t.integer :user_id
      t.boolean :sent
      t.integer :thread_count
      t.string :folder
      t.integer :parent_id
      t.boolean :read
      t.string :name

      t.timestamps
    end
  end
end
