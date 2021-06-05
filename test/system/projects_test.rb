require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Approved by", with: @project.approved_by
    fill_in "Client name", with: @project.client_name
    fill_in "Client reference", with: @project.client_reference
    fill_in "Document number", with: @project.document_number
    fill_in "Document title", with: @project.document_title
    fill_in "Prepared by", with: @project.prepared_by
    fill_in "Project manager", with: @project.project_manager
    fill_in "Project name", with: @project.project_name
    fill_in "Project number", with: @project.project_number
    fill_in "Revision date", with: @project.revision_date
    fill_in "Revision number", with: @project.revision_number
    fill_in "User", with: @project.user_id
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Approved by", with: @project.approved_by
    fill_in "Client name", with: @project.client_name
    fill_in "Client reference", with: @project.client_reference
    fill_in "Document number", with: @project.document_number
    fill_in "Document title", with: @project.document_title
    fill_in "Prepared by", with: @project.prepared_by
    fill_in "Project manager", with: @project.project_manager
    fill_in "Project name", with: @project.project_name
    fill_in "Project number", with: @project.project_number
    fill_in "Revision date", with: @project.revision_date
    fill_in "Revision number", with: @project.revision_number
    fill_in "User", with: @project.user_id
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
