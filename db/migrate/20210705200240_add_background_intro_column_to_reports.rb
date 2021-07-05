class AddBackgroundIntroColumnToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :background_intro, :text
  end
end
