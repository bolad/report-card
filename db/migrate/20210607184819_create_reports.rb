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
      t.string :checked_by
      t.string :approved_by
      t.string :revision_number
      t.text :description

      t.timestamps
    end
  end
end
