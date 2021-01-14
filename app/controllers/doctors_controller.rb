class DoctorsController < ApplicationController

    def show
        #  byebug
        @doctor = Doctor.find_by_id(params[:id])
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end


end