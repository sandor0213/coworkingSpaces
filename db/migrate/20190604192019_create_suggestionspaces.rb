class CreateSuggestionspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestionspaces do |t|
      t.integer :coworkingspace_id
      t.date :beginDate
      t.date :finishDate

      t.timestamps
    end
  end
end
