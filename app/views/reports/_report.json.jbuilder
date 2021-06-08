json.extract! report, :id, :project_information, :executive_summary, :created_at, :updated_at
json.url report_url(report, format: :json)
