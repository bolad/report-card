class AddCatchmentTankToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :catchment_tank, :text
  end
end
