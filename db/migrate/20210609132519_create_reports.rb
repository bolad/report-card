class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :project_name
      t.string :project_number
      t.string :document_title
      t.string :document_number
      t.string :document_status
      t.string :date
      t.string :client_name
      t.string :client_number
      t.string :project_manager
      t.string :author
      t.string :checked_by
      t.string :description
      t.text :executive_summary
      t.text :project_background
      t.text :project_objective
      t.text :proposed_developments
      t.text :catchment_details
      t.text :data_assessment
      t.text :conclusion

      t.timestamps
    end
  end
end
