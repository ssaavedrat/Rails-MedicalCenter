class TreatmentsController < ApplicationController
  before_action :set_treatment, only: %i[ show edit update destroy ]

  # GET /treatments or /treatments.json
  def index
    @treatments = Treatment.all
  end

  # GET /treatments/1 or /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
    @patients = Patient.all.pluck :name, :id
  end

  # GET /treatments/1/edit
  def edit
    @patients = Patient.all.pluck :name, :id
  end

  # POST /treatments or /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)
    @patients = Patient.all.pluck :name, :id

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to treatment_url(@treatment), notice: "Treatment was successfully created." }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatments/1 or /treatments/1.json
  def update
    @patients = Patient.all.pluck :name, :id
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to treatment_url(@treatment), notice: "Treatment was successfully updated." }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatments/1 or /treatments/1.json
  def destroy
    @patients = Patient.all.pluck :name, :id
    @treatment.destroy

    respond_to do |format|
      format.html { redirect_to treatments_url, notice: "Treatment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = Treatment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treatment_params
      params.require(:treatment).permit(:name, :description, :date, :patient_id)
    end
end
