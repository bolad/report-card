class RenameFlowIncludeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :flows, :include, :includes
  end
end
