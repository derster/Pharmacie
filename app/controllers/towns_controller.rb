class TownsController < ApplicationController
    before_action :authenticate_user!, :set_town, only: [:show, :edit, :update, :destroy]
    
    def index
        @towns = Town.all   
    end

    def show 
          
    end

    def new
        @town = Town.new
    end

    def edit  
    end

   

    def create
        @town = Town.new(town_params)
        if @town.save
            redirect_to @town, notice: 'Town was successfully created.' 
        else
            render :new 
        end
    end

    def update
        if @town.update(town_params)
            redirect_to @town, notice: 'Town was successfully edited.' 
        else
            render :edit 
        end
    end

    def destroy
        @town.destroy redirect_to pharms_url, notice: 'Town was successfully destroyed.' 
    end

    private
        def set_town
            @town = Town.find(params[:id])
        end

        def town_params
            params.require(:town).permit(:name)
        end
end