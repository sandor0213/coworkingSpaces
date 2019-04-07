class CreateCoworkingspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :coworkingspaces do |t|
      t.integer :user_id
      t.float :price
      t.float :area
      t.string :description
      t.boolean :is_booked
      t.string :address
      t.string :city
      t.datetime :beginDate
      t.datetime :finishDate
      t.boolean :has_kitchen
      t.boolean :has_meetroom
      t.boolean :has_free_wifi
      t.boolean :has_free_cookies
      t.integer :people_number

      t.timestamps
    end
  end
end
