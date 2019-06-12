class CreateUserparams < ActiveRecord::Migration[5.2]
  def change
    create_table :userparams do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.string :hometown
      t.string :occupation
      t.integer :age

      t.timestamps
    end
  end
end
