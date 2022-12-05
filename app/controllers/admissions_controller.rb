class AdmissionsController < ApplicationController
    wrap_parameters format:[]
    def create
    admission = Admission.create(admission_params)
    render json: admission, status: :created, include: [:hospitals, :patients]
    end
    private
    def admission_params
        params.permit(:date, :hospital_id, :patient_id)
    end
end
