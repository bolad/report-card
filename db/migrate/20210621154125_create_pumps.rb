class CreatePumps < ActiveRecord::Migration[6.1]
  def change
    create_table :pumps do |t|
      t.string :station_ref
      t.string :name
      t.string :overflow_ref
      t.string :permitted_rate
      t.string :modelled_rate
      t.string :run_time
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
