class CreateBackgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :backgrounds do |t|
      t.string :site_name
      t.string :location
      t.string :property_count
      t.string :site_type
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
