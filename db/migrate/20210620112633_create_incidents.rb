class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :location
      t.string :postcode
      t.string :ngr
      t.string :hfrr
      t.string :historical_flooding
      t.string :wirs
      t.string :nearest_node
      t.string :modelled_risk
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
