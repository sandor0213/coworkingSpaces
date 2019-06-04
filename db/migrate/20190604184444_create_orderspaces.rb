class CreateOrderspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :orderspaces do |t|
      t.integer :coworkingspace_id
      t.integer :peopleNumber
      t.date :beginDate
      t.date :finishDate
      t.integer :user_id

      t.timestamps
    end
  end
end
