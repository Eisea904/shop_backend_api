class PartiesController < ApplicationController
    
    def index
        @Parties = party.all
        render json: @Parties
    end

    def show 
        @party = party.find(params[:id])
        render json: @party
    end

    def create
        @party = party.create(party_params)
        render json: @party
    end

    def update
        @party = party.find(params[:id])
        @party.update(party_params)
        render json: @party
    end
    
    def destroy 
        @party = party.find(params[:id])
        @party.destroy
        render json: @party
    end


    private

    def party_params
        params.permit(:party_name, :roses, :electrum)
    end


end