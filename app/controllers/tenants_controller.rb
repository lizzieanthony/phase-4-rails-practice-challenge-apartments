class TenantsController < ApplicationController
    def index
        render json: Tenant.all 
    end

    def show 
        tenant = Tenant.find(params[:id])
        render json: tenant 
    end 

    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: created 
    end

    def update

    end

    def destroy
    end

    private 

    def tenant_id
        params.permit(:name, :age)
    end

end
