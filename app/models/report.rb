class Report < ApplicationRecord
  belongs_to :user

  has_many :backgrounds, :dependent => :delete_all
  has_many :flows, :dependent => :delete_all
  has_many :connections, :dependent => :delete_all
  has_many :incidents, :dependent => :delete_all
  has_many :cellars, :dependent => :delete_all
  has_many :overflows, :dependent => :delete_all
  has_many :pumps, :dependent => :delete_all
  has_many :tanks, :dependent => :delete_all
  has_many :data_sources, :dependent => :delete_all
  has_one :model_database, dependent: :destroy
  has_one :data_summary, dependent: :destroy
  has_one :executive, dependent: :destroy

  validates :project_name, presence: true

  accepts_nested_attributes_for :executive,
                                allow_destroy: true

  accepts_nested_attributes_for :backgrounds,
                                allow_destroy: true

  accepts_nested_attributes_for :flows,
                                allow_destroy: true

  accepts_nested_attributes_for :connections,
                                allow_destroy: true

  accepts_nested_attributes_for :incidents,
                                allow_destroy: true

  accepts_nested_attributes_for :cellars,
                                allow_destroy: true

  accepts_nested_attributes_for :overflows,
                                allow_destroy: true

  accepts_nested_attributes_for :pumps,
                                allow_destroy: true

  accepts_nested_attributes_for :tanks,
                                allow_destroy: true

  accepts_nested_attributes_for :model_database,
                                allow_destroy: true

  accepts_nested_attributes_for :data_summary,
                                allow_destroy: true

  accepts_nested_attributes_for :data_sources,
                                allow_destroy: true

  has_rich_text :executive_summary
  has_rich_text :project_background
  has_rich_text :project_objective
  has_rich_text :proposed_developments
  has_rich_text :catchment_details
  has_rich_text :data_assessment
  has_rich_text :conclusion
end
