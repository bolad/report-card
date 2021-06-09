require "application_system_test_case"

class ProjectInformationsTest < ApplicationSystemTestCase
  setup do
    @project_information = project_informations(:one)
  end

  test "visiting the index" do
    visit project_informations_url
    assert_selector "h1", text: "Project Informations"
  end

  test "creating a Project information" do
    visit project_informations_url
    click_on "New Project Information"

    fill_in "Author", with: @project_information.author
    fill_in "Client name", with: @project_information.client_name
    fill_in "Client number", with: @project_information.client_number
    fill_in "Date", with: @project_information.date
    fill_in "Document status", with: @project_information.document_status
    fill_in "Document title", with: @project_information.document_title
    fill_in "Project manager", with: @project_information.project_manager
    fill_in "Project name", with: @project_information.project_name
    fill_in "Project number", with: @project_information.project_number
    fill_in "Report", with: @project_information.report_id
    click_on "Create Project information"

    assert_text "Project information was successfully created"
    click_on "Back"
  end

  test "updating a Project information" do
    visit project_informations_url
    click_on "Edit", match: :first

    fill_in "Author", with: @project_information.author
    fill_in "Client name", with: @project_information.client_name
    fill_in "Client number", with: @project_information.client_number
    fill_in "Date", with: @project_information.date
    fill_in "Document status", with: @project_information.document_status
    fill_in "Document title", with: @project_information.document_title
    fill_in "Project manager", with: @project_information.project_manager
    fill_in "Project name", with: @project_information.project_name
    fill_in "Project number", with: @project_information.project_number
    fill_in "Report", with: @project_information.report_id
    click_on "Update Project information"

    assert_text "Project information was successfully updated"
    click_on "Back"
  end

  test "destroying a Project information" do
    visit project_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project information was successfully destroyed"
  end
end
