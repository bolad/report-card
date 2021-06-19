class CreateFlows < ActiveRecord::Migration[6.1]
  def change
    create_table :flows do |t|
      t.string :flow_modelled
      t.string :include
      t.string :comments
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
