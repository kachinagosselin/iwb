class AddAttachmentToAsset < ActiveRecord::Migration
  def change
      add_attachment :assets, :document
      add_column :assets, :document_remote_url, :string
  end
end
