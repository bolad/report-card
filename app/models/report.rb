class Report < ApplicationRecord
  belongs_to :user
  has_one :project_information
  validates :project_name, presence: true
  accepts_nested_attributes_for :project_information

  has_rich_text :executive_summary
  has_rich_text :project_background
  has_rich_text :project_objective
  has_rich_text :proposed_developments
  has_rich_text :catchment_details
  has_rich_text :conclusion
end
