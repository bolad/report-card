class Report < ApplicationRecord
  belongs_to :user
  has_many :executives
  has_many :backgrounds
  validates :project_name, presence: true
  accepts_nested_attributes_for :executives,
                                allow_destroy: true,
                                reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :backgrounds,
                                allow_destroy: true,
                                reject_if: :all_blank, allow_destroy: true

  has_rich_text :executive_summary
  has_rich_text :project_background
  has_rich_text :project_objective
  has_rich_text :proposed_developments
  has_rich_text :catchment_details
  has_rich_text :conclusion
end
