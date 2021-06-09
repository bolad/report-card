class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.text :executive_summary

      t.timestamps
    end
  end
end
