require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Approved by", with: @report.approved_by
    fill_in "Checked by", with: @report.checked_by
    fill_in "Client name", with: @report.client_name
    fill_in "Client number", with: @report.client_number
    fill_in "Date", with: @report.date
    fill_in "Description", with: @report.description
    fill_in "Document number", with: @report.document_number
    fill_in "Document status", with: @report.document_status
    fill_in "Document title", with: @report.document_title
    fill_in "Project manager", with: @report.project_manager
    fill_in "Project name", with: @report.project_name
    fill_in "Project number", with: @report.project_number
    fill_in "Revision number", with: @report.revision_number
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Approved by", with: @report.approved_by
    fill_in "Checked by", with: @report.checked_by
    fill_in "Client name", with: @report.client_name
    fill_in "Client number", with: @report.client_number
    fill_in "Date", with: @report.date
    fill_in "Description", with: @report.description
    fill_in "Document number", with: @report.document_number
    fill_in "Document status", with: @report.document_status
    fill_in "Document title", with: @report.document_title
    fill_in "Project manager", with: @report.project_manager
    fill_in "Project name", with: @report.project_name
    fill_in "Project number", with: @report.project_number
    fill_in "Revision number", with: @report.revision_number
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
