class AddCellaredPropertyToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :cellared_property, :text
  end
end
