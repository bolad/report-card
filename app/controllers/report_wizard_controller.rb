class ReportWizardController < ApplicationController
  include Wicked::Wizard
  #before_action :set_progress, only: [:show]

  steps :project_information, :executive_summary

  def show
    # case step
    # when :find_friends
    #   @friends = @user.find_friends
    # end
    render_wizard
  end

  def finish_wizard_path
    root_path
  end
end
