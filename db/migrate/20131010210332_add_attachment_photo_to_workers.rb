class AddAttachmentPhotoToWorkers < ActiveRecord::Migration
  def self.up
    change_table :workers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :workers, :photo
  end
end
