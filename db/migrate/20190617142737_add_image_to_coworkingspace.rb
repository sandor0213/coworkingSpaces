class AddImageToCoworkingspace < ActiveRecord::Migration[5.2]
  def change
    add_column :coworkingspaces, :image, :string
  end
end
