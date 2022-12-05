class PatientsController < ApplicationController
    wrap_parameters format:[]
    def create
        patient = Patient.create(patient_params)
        render json: patient, status: :created
    rescue ActiveRecord::RecordInvalid => e
    render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end
    private
    def patient_params
        params.permit(:name, :email, :password_digest)
    end
end
