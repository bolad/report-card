class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :reports, :catchment_details, :flooding_locations
  end
end
