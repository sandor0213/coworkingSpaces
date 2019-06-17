class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
