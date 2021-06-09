class CreateProjectInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :project_informations do |t|
      t.string :project_name
      t.string :project_number
      t.string :document_title
      t.string :document_status
      t.string :date
      t.string :client_name
      t.string :client_number
      t.string :project_manager
      t.string :author
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
