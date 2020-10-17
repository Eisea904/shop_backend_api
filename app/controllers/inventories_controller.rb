class InventoriesController < ApplicationController
    
    def index
        @Inventories = inventory.all
        render json: @Inventories
    end

    def show 
        @inventory = inventory.find(params[:id])
        render json: @inventory
    end

    def create
        @inventory = inventory.create(inventory_params)
        render json: @inventory
    end

    def update
        @inventory = inventory.find(params[:id])
        @inventory.update(inventory_params)
        render json: @inventory
    end
    
    def destroy 
        @inventory = inventory.find(params[:id])
        @inventory.destroy
        render json: @inventory
    end


    private

    def inventory_params
        params.permit(:party_id, :item_id)
    end


end