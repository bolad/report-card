class CreateCellars < ActiveRecord::Migration[6.1]
  def change
    create_table :cellars do |t|
      t.string :location
      t.string :postcode
      t.string :ngr
      t.string :flooding_register
      t.string :wirs_register
      t.string :nearest_node
      t.string :freeboard
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
