class PartiesController < ApplicationController
    
    def index
        @parties = Party.all
        render json: @parties
    end

    def show 
        @party = Party.find(params[:id])
        render json: @party
    end

    def create
        @party = Party.create(party_params)
        render json: @party
    end

    def update
        @party = Party.find(params[:id])
        @party.update(party_params)
        render json: @party
    end
    
    def destroy 
        @party = Party.find(params[:id])
        @party.destroy
        render json: @party
    end


    private

    def party_params
        params.permit(:party_name, :roses, :electrum)
    end


end