class Reports::ReportWizardController < ApplicationController
  include Wicked::Wizard
  before_action :set_progress, only: [:show]

  steps :project_information, :executive_summary

  def show
    @report = Report.find(params[:report_id])
    # case step
    # when :find_friends
    #   @friends = @user.find_friends
    # end
    render_wizard
  end

  def finish_wizard_path
    @report = Report.find(params[:report_id])
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

end
