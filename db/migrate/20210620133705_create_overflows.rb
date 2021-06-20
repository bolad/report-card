class CreateOverflows < ActiveRecord::Migration[6.1]
  def change
    create_table :overflows do |t|
      t.string :cso_name
      t.string :permit
      t.string :model
      t.string :edm_annual_spill_freq
      t.string :edm_annual_spill_duration
      t.string :edm_bathing_spill_freq
      t.string :edm_bathing_spill_duration
      t.string :model_annual_spill_freq
      t.string :model_annual_spill_duration
      t.string :model_annual_spill_volume
      t.string :model_bathing_spill_freq
      t.string :model_bathing_spill_duration
      t.string :model_bathing_spill_volume
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
