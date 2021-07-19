class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :status
      t.string :system
      t.integer :main_case
      t.string :environment

      t.timestamps
    end
  end
end
