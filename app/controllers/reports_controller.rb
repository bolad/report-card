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
      params.require(:report).permit(:project_name, :project_number, :document_title, :document_number, :document_status, :date, 
                                    :client_name, :client_number, :project_manager, :author, :checked_by, :description, :executive_summary, 
                                    :project_background, :project_objective, :proposed_developments, :catchment_details, :data_assessment, :conclusion, 
                                    executives_attributes: [:id, :project_name, :project_number, :potential_impact, :date, :_destroy], 
                                    backgrounds_attributes: [:id, :site_name, :location, :property_count, :site_type])
    end
end
