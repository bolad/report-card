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
    when :conclusion
      @report.update(report_params)
    end
    redirect_to request.referrer
    #render_wizard @report
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
    params.require(:report).permit(:project_name, :project_number, :document_title, :document_number, :document_status, :date, :revision, :approved_by,
                                  :client_name, :client_number, :project_manager, :author, :checked_by, :description, :executive_summary, :background_intro,
                                  :project_background, :project_objective, :proposed_developments, :catchment_details, :data_assessment, :conclusion, :flooding_locations,
                                  :cellared_property, :pumping_station, :catchment_overflow, :catchment_tank,
                                  executive_attributes: [:id, :project_name, :project_number, :potential_impact, :date], 
                                  background_attributes: [:id, :site_name, :location, :property_count, :site_type],
                                  flows_attributes: [:id, :flow_modelled, :include, :comments],
                                  connections_attributes: [:id, :development, :dwf, :thirty_year, :node_ref, :freeboard, :receiving_sewer, :pfc, :pipe, :peak_flow, :pumped],
                                  incidents_attributes: [:id, :location, :postcode, :ngr, :hfrr, :historical_flooding, :wirs, :nearest_node, :modelled_risk, :comments],
                                  cellars_attributes: [:id, :location, :postcode, :ngr, :flooding_register, :wirs_register, :freeboard, :nearest_node, :comments],
                                  overflows_attributes: [:id, :cso_name, :permit, :model, :edm_annual_spill_freq, :edm_annual_spill_duration, :edm_bathing_spill_freq, :edm_bathing_spill_duration, :model_annual_spill_freq, :model_annual_spill_duration, :model_annual_spill_volume, :model_bathing_spill_freq, :model_bathing_spill_duration, :model_bathing_spill_volume, :comments],
                                  pumps_attributes: [:id, :station_ref, :name, :overflow_ref, :permitted_rate, :modelled_rate, :run_time, :comments],
                                  tanks_attributes: [:id, :tank_ref, :name, :overflow_ref, :online, :permitted_storage, :effective_storage, :annual_volume, :comments],
                                  model_database_attributes: [:id, :model_type, :subcatchment_review, :contributing_areas, :flooding_representation, :soil_type, :runoff_model, :ancillaries_wwtw, :ancillaries_cso, :ancillaries_tanks, :ancillaries_pumps, :rainfall_data, :model_update, :model_suitable],
                                  data_summary_attributes: [:id, :summary_1, :summary_2, :summary_3, :summary_4, :summary_5, :summary_6],
                                  data_sources_attributes: [:id, :data_required, :provided, :file_name]
                                  )
  end

end
