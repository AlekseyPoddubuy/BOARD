class AddAttachmentAvatarToAgencies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :agencies do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :agencies, :avatar
  end
end
