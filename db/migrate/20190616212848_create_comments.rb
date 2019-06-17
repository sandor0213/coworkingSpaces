class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :coworkingspace_id
      t.string :message
      t.string :image

      t.timestamps
    end
  end
end
