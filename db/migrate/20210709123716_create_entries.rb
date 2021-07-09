class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.integer :time_taken
      t.string :user
      t.text :description
      t.string :status
      t.integer :case
      t.string :team

      t.timestamps
    end
  end
end
