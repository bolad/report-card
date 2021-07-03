class CreateDataSources < ActiveRecord::Migration[6.1]
  def change
    create_table :data_sources do |t|
      t.string :data_required
      t.string :provided
      t.string :file_name
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
