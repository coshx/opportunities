class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  def index
    @patients = Patient.all
    json_response(@patients)
  end

  # POST /patients
  def create
    @patient = Patient.create!(patient_params)
    json_response(@patient, :created)
  end

  # GET /patients/:id
  def show
    json_response(@patient)
  end

  # PUT /patients/:id
  def update
    @patient.update(patient_params)
    head :no_content
  end

  # DELETE /patients/:id
  def destroy
    @patient.destroy
    head :no_content
  end

  private

  def patient_params
    # whitelist params
    params.permit(:first_name, :last_name, :dob)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
