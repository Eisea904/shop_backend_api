class InventoriesController < ApplicationController
    
    def index
        @inventories = Inventory.all
        render json: @inventories
    end

    def show 
        @inventory = Inventory.find(params[:id])
        render json: @inventory
    end

    def create
        @inventory = Inventory.create(inventory_params)
        render json: @inventory
    end

    def update
        @inventory = Inventory.find(params[:id])
        @inventory.update(inventory_params)
        render json: @inventory
    end
    
    def destroy 
        @inventory = Inventory.find(params[:id])
        @inventory.destroy
        render json: @inventory
    end


    private

    def inventory_params
        params.permit(:party_id, :item_id)
    end


end