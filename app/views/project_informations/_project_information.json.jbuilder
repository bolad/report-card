json.extract! project_information, :id, :project_name, :project_number, :document_title, :document_status, :date, :client_name, :client_number, :project_manager, :author, :report_id, :created_at, :updated_at
json.url project_information_url(project_information, format: :json)
