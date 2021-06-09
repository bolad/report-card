class Report < ApplicationRecord
  has_one :project_information
  accepts_nested_attributes_for :project_information
end
