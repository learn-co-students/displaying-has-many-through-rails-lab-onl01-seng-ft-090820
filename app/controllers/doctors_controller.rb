class DoctorsController < ApplicationController

    def new
        @doc = Doctor.new
    end

    def create
        @doc = Doctor.create(doctor_params)
    end

    def show
        @doc = Doctor.find(params[:id])
    end
    
    private

    def doctor_params
        params.require(:require).permit(:name, :department)
    end
end
