class AdmissionsController < ApplicationController
# rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
# before_action :authorize
# skip_before_action :authorize, only: [:index]

    wrap_parameters format:[]
    def index 
        admissions = Admission.all
        render json: admissions, status: :ok
    end
    
    def create
        admission = Admission.create!(admission_params)
        render json: admission, status: :created
    end
    
    def destroy
        admission = Admission.find_by(id:params[:id])
        if admission
            admission.destroy
            head :no_content
        else
            render json: {error: "Admission not found"}, status: :not_found
        end
    end
    private
    def admission_params
        params.permit(:name, :condition, :date, :patient_id, :hospital_id)
    end
    # def render_unprocessable_entity(e)
    #     render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    # end
    # def authorize
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :patient_id
    #   end
end
