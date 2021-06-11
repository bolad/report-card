class Report < ApplicationRecord
  has_one :project_information
  accepts_nested_attributes_for :project_information

  has_rich_text :executive_summary
  has_rich_text :project_background
  has_rich_text :project_objective
end
