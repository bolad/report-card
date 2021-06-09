class Reports::ReportWizardController < ApplicationController
  include Wicked::Wizard
  before_action :set_progress, only: [:show, :update]
  before_action :set_report, only: [:show, :update, :finish_wizard_path]

  steps :project_information, :executive_summary

  def show
    case step
    when :project_information
      #@project_information.update(project_information_params)
    when :executive_summary
    end
    render_wizard
  end

  def update
    #@project_information = @report.project_information.id
    case step
    when :project_information
      @report.project_information.update(project_information_params)
      #@project_information.update(project_information_params)
    when :executive_summary
      @report.update(report_params)
    end
    render_wizard @report
  end

  def finish_wizard_path
    report_path(@report)
  end

  private 

  def set_progress
    if wizard_steps.any? && wizard_steps.index(step).present?
      @progress = ((wizard_steps.index(step) + 1).to_d / wizard_steps.count.to_d) * 100
    else
      @progress = 0
    end
  end

  def set_report
    @report = Report.find(params[:report_id])
  end

  def report_params
    params.require(:report).permit(:executive_summary, project_informations_attributes: [:id, :project_name, :project_number, :document_title, :document_number, :document_status, :date, :client_name, :client_number, :project_manager, :author])
  end

  def project_information_params
    params.permit(:project_name, :project_number, :document_title, :document_status, :date, :client_name, :client_number, :project_manager, :author, :report_id)
  end

end
