class AddAttachmentAvatarToUserparams < ActiveRecord::Migration[5.2]
  def change
  	 change_table :userparams do |t|
      t.attachment :avatar
    end
  end
end
