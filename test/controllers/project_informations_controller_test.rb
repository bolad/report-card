require "test_helper"

class ProjectInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_information = project_informations(:one)
  end

  test "should get index" do
    get project_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_project_information_url
    assert_response :success
  end

  test "should create project_information" do
    assert_difference('ProjectInformation.count') do
      post project_informations_url, params: { project_information: { author: @project_information.author, client_name: @project_information.client_name, client_number: @project_information.client_number, date: @project_information.date, document_status: @project_information.document_status, document_title: @project_information.document_title, project_manager: @project_information.project_manager, project_name: @project_information.project_name, project_number: @project_information.project_number, report_id: @project_information.report_id } }
    end

    assert_redirected_to project_information_url(ProjectInformation.last)
  end

  test "should show project_information" do
    get project_information_url(@project_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_information_url(@project_information)
    assert_response :success
  end

  test "should update project_information" do
    patch project_information_url(@project_information), params: { project_information: { author: @project_information.author, client_name: @project_information.client_name, client_number: @project_information.client_number, date: @project_information.date, document_status: @project_information.document_status, document_title: @project_information.document_title, project_manager: @project_information.project_manager, project_name: @project_information.project_name, project_number: @project_information.project_number, report_id: @project_information.report_id } }
    assert_redirected_to project_information_url(@project_information)
  end

  test "should destroy project_information" do
    assert_difference('ProjectInformation.count', -1) do
      delete project_information_url(@project_information)
    end

    assert_redirected_to project_informations_url
  end
end
