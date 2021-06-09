class ProjectInformationsController < ApplicationController
  before_action :set_project_information, only: %i[ show edit update destroy ]

  # GET /project_informations or /project_informations.json
  def index
    @project_informations = ProjectInformation.all
  end

  # GET /project_informations/1 or /project_informations/1.json
  def show
  end

  # GET /project_informations/new
  def new
    @project_information = ProjectInformation.new
  end

  # GET /project_informations/1/edit
  def edit
  end

  # POST /project_informations or /project_informations.json
  def create
    @project_information = ProjectInformation.new(project_information_params)

    respond_to do |format|
      if @project_information.save
        format.html { redirect_to @project_information, notice: "Project information was successfully created." }
        format.json { render :show, status: :created, location: @project_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_informations/1 or /project_informations/1.json
  def update
    respond_to do |format|
      if @project_information.update(project_information_params)
        format.html { redirect_to @project_information, notice: "Project information was successfully updated." }
        format.json { render :show, status: :ok, location: @project_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_informations/1 or /project_informations/1.json
  def destroy
    @project_information.destroy
    respond_to do |format|
      format.html { redirect_to project_informations_url, notice: "Project information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_information
      @project_information = ProjectInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_information_params
      params.require(:project_information).permit(:project_name, :project_number, :document_title, :document_status, :date, :client_name, :client_number, :project_manager, :author, :report_id)
    end
end
