class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :project_information
      t.string :executive_summary

      t.timestamps
    end
  end
end
