class VisitsController < ApplicationController
  before_action :set_patient
  before_action :set_patient_visit, only: [:show, :update, :destroy]

  # GET /patients/:patient_id/visits
  def index
    json_response(@patient.visits)
  end

  # GET /patients/:patient_id/visits/:id
  def show
    json_response(@visit)
  end

  # POST /patients/:patient_id/visits
  def create
    @patient.visits.create!(visit_params)
    json_response(@patient, :created)
  end

  # PUT /patients/:patient_id/visits/:id
  def update
    @visit.update(visit_params)
    head :no_content
  end

  # DELETE /patients/:patient_id/visits/:id
  def destroy
    @visit.destroy
    head :no_content
  end

  private

  def visit_params
    params.permit(:date, :height, :weight, :ha1c, :blood_pressure_systolic, :blood_pressure_diastolic)
  end

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def set_patient_visit
    @visit = @patient.visits.find_by!(id: params[:id]) if @patient
  end
end
