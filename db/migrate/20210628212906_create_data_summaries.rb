class CreateDataSummaries < ActiveRecord::Migration[6.1]
  def change
    create_table :data_summaries do |t|
      t.string :summary_1
      t.string :summary_2
      t.string :summary_3
      t.string :summary_4
      t.string :summary_5
      t.string :summary_6
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
