class AddRevisionNumberToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :revision_number, :string
  end
end
