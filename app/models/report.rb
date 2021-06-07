class Report < ApplicationRecord
  validates_presence_of :project_name, :project_number, :document_title 
end
