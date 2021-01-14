class PatientsController < ApplicationController

    def index 
        @patients = Patient.all
    end

    def show  
        @patient = Patient.find_by_id(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:name, :age)
    end

end