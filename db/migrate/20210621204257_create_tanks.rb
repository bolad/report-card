class CreateTanks < ActiveRecord::Migration[6.1]
  def change
    create_table :tanks do |t|
      t.string :tank_ref
      t.string :name
      t.string :overflow_ref
      t.string :online
      t.string :permitted_storage
      t.string :effective_storage
      t.string :annual_volume
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
