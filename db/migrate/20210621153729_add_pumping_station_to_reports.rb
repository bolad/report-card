class AddPumpingStationToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :pumping_station, :text
  end
end
