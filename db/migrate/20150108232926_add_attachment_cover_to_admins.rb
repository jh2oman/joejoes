class AddAttachmentCoverToAdmins < ActiveRecord::Migration
  def self.up
    change_table :admins do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :admins, :cover
  end
end
