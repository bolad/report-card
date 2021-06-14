class Reports::ReportWizardController < ApplicationController
  include Wicked::Wizard
  before_action :set_progress, only: [:show, :update]
  before_action :set_report, only: [:show, :update, :finish_wizard_path]

  steps :project_information, :executive_summary, :project_background, :project_objective, :proposed_developments, :catchment_details, :data_assessment, :conclusion

  def show
      case step
      when :project_information
      when :executive_summary
      when :project_background
      when :project_objective
      when :proposed_developments
      when :catchment_details
      when :data_assessment
      when :conclusion
    end
    render_wizard
  end

  def update
    case step
    when :project_information
      @report.update(report_params)
    when :executive_summary
      @report.update(report_params)
    when :executive_summary
      @report.update(report_params)
    when :project_background
      @report.update(report_params)
    when :project_objective
      @report.update(report_params)
    when :proposed_developments
      @report.update(report_params)
    when :catchment_details
      @report.update(report_params)
    when :data_assessment
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
    params.require(:report).permit(:project_name, :project_number, :document_title, :document_number, :document_status, :date, 
                                  :client_name, :client_number, :project_manager, :author, :checked_by, :description, :executive_summary, 
                                  :project_background, :project_objective, :proposed_developments, :catchment_details, :data_assessment, :conclusion, 
                                  executives_attributes: [:project_name, :project_number, :potential_impact, :date])
  end

end
