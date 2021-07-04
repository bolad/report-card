class ReportsController < ApplicationController
  before_action :set_report, only: %i[ show edit update destroy ]

  def index
    #@reports = Report.all
    @q = Report.ransack(params[:q])
    @reports = @q.result(distinct: true)
  end

  def show
    @page_title = @report.document_title
  end

  def new
    @report = Report.new
  end

  # def edit
  # end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    respond_to do |format|
      if @report.save
        format.html { redirect_to report_report_wizard_index_path(@report), notice: "Report was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @report.update(report_params)
  #       format.html { redirect_to report_report_wizard_index_path(@report), notice: "Report was successfully updated." }
  #       format.json { render :show, status: :ok, location: @report }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @report.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /reports/1 or /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: "Report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.require(:report).permit(:project_name, :project_number, :document_title, :document_number, :document_status, :date, :revision, :approved_by,
                                    :client_name, :client_number, :project_manager, :author, :checked_by, :description, :executive_summary, 
                                    :project_background, :project_objective, :proposed_developments, :catchment_details, :data_assessment, :conclusion, 
                                    executives_attributes: [:id, :project_name, :project_number, :potential_impact, :date, :_destroy], 
                                    backgrounds_attributes: [:id, :site_name, :location, :property_count, :site_type],
                                    flows_attributes: [:id, :flow_modelled, :include, :comments],
                                    connections_attributes: [:id, :development, :dwf, :thirty_year, :node_ref, :freeboard, :receiving_sewer, :pfc, :pipe, :peak_flow, :pumped],
                                    incidents_attributes: [:id, :location, :postcode, :ngr, :hfrr, :historical_flooding, :wirs, :nearest_node, :modelled_risk, :comments],
                                    cellars_attributes: [:id, :location, :postcode, :ngr, :flooding_register, :wirs_register, :freeboard, :nearest_node, :comments],
                                    overflows_attributes: [:id, :cso_name, :permit, :model, :edm_annual_spill_freq, :edm_annual_spill_duration, :edm_bathing_spill_freq, :edm_bathing_spill_duration, :model_annual_spill_freq, :model_annual_spill_duration, :model_annual_spill_volume, :model_bathing_spill_freq, :model_bathing_spill_duration, :model_bathing_spill_volume, :comments],
                                    pumps_attributes: [:id, :station_ref, :name, :overflow_ref, :permitted_rate, :modelled_rate, :run_time, :comments],
                                    tanks_attributes: [:id, :tank_ref, :name, :overflow_ref, :online, :permitted_storage, :effective_storage, :annual_volume, :comments],
                                    model_database_attributes: [:id, :model_type, :subcatchment_review, :contributing_areas, :flooding_representation, :soil_type, :runoff_model, :ancillaries_wwtw, :ancillaries_cso, :ancillaries_tanks, :ancillaries_pumps, :rainfall_data, :model_update, :model_suitable],
                                    data_summary_attributes: [:id, :summary_1, :summary_2, :summary_3, :summary_4, :summary_5, :summary_6],
                                    data_sources: [:id, :data_required, :provided, :file_name]
                                    )
    end
end
