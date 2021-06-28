class CreateModelDatabases < ActiveRecord::Migration[6.1]
  def change
    create_table :model_databases do |t|
      t.text :model_type
      t.text :subcatchment_review
      t.text :contributing_areas
      t.text :flooding_representation
      t.text :soil_type
      t.text :runoff_model
      t.text :ancillaries_wwtw
      t.text :ancillaries_cso
      t.text :ancillaries_tanks
      t.text :ancillaries_pumps
      t.text :rainfall_data
      t.text :model_update
      t.text :model_suitable
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
