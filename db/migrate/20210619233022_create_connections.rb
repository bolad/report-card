class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.string :development
      t.string :dwf
      t.string :thirty_year
      t.string :node_ref
      t.string :freeboard
      t.string :receiving_sewer
      t.string :pfc
      t.string :pipe
      t.string :peak_flow
      t.string :pumped
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
