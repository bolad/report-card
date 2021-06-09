class ChangeExecutiveSummaryFieldTypeToText < ActiveRecord::Migration[6.1]
  def change
    change_column :reports, :executive_summary, :text
  end
end
