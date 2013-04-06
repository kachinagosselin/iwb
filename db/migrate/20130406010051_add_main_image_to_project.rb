class AddMainImageToProject < ActiveRecord::Migration
  def change
    add_attachment :projects, :main_image
  end
end
