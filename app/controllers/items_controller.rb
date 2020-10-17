class ItemsController < ApplicationController
    
    def index
        @items = item.all
        render json: @items
    end

    def show 
        @item = item.find(params[:id])
        render json: @item
    end

    def create
        @item = item.create(item_params)
        render json: @item
    end

    def update
        @item = item.find(params[:id])
        @item.update(item_params)
        render json: @item
    end
    
    def destroy 
        @item = item.find(params[:id])
        @item.destroy
        render json: @item
    end


    private

    def item_params
        params.permit(:item_name, :description, :price, :magical, :weight)
    end


end