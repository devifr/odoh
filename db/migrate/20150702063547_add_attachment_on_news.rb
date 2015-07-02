class AddAttachmentOnNews < ActiveRecord::Migration
  def change
    add_attachment :news, :images
  end
end
