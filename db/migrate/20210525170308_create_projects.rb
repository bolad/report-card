class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :project_number
      t.string :project_name
      t.string :client_name
      t.string :document_title
      t.string :document_number
      t.string :revision_number
      t.string :client_reference
      t.string :revision_date
      t.string :project_manager
      t.string :prepared_by
      t.string :approved_by

      t.timestamps
    end
  end
end
