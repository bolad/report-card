class RenameRevisionNumberColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :reports, :revision_number, :approved_by
  end
end
