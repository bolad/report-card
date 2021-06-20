class AddCatchmentOverflowToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :catchment_overflow, :text
  end
end
