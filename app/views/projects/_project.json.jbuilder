json.extract! project, :id, :user_id, :project_number, :project_name, :client_name, :document_title, :document_number, :revision_number, :client_reference, :revision_date, :project_manager, :prepared_by, :approved_by, :created_at, :updated_at
json.url project_url(project, format: :json)
