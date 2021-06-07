require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { approved_by: @report.approved_by, checked_by: @report.checked_by, client_name: @report.client_name, client_number: @report.client_number, date: @report.date, description: @report.description, document_number: @report.document_number, document_status: @report.document_status, document_title: @report.document_title, project_manager: @report.project_manager, project_name: @report.project_name, project_number: @report.project_number, revision_number: @report.revision_number } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { approved_by: @report.approved_by, checked_by: @report.checked_by, client_name: @report.client_name, client_number: @report.client_number, date: @report.date, description: @report.description, document_number: @report.document_number, document_status: @report.document_status, document_title: @report.document_title, project_manager: @report.project_manager, project_name: @report.project_name, project_number: @report.project_number, revision_number: @report.revision_number } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end
