class CreateCoworkingfilters < ActiveRecord::Migration[5.2]
  def change
    create_table :coworkingfilters do |t|
      t.string :city
      t.date :beginDate
      t.date :finishDate

      t.timestamps
    end
  end
end
