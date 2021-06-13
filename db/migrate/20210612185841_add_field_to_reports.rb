class AddFieldToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :revision, :string
  end
end
