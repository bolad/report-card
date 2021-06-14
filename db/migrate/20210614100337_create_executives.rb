class CreateExecutives < ActiveRecord::Migration[6.1]
  def change
    create_table :executives do |t|
      t.string :project_name
      t.string :project_number
      t.string :potential_impact
      t.string :date
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
