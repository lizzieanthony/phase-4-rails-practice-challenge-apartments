class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all 
    end

    def show 
        apartment = Apartment.find(params[:id])
        render json: apartment
    end 

    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment, status: created 
    end

    def update

    end

    def destroy
    end

    private 

    def apartment_params
        params.permit(:number)
    end
end
