class GardesController < ApplicationController
     before_action :authenticate_user!, :set_garde, only: [:show, :edit, :update, :destroy]
    
    def index
        @gardes = Garde.includes(:pharm).all.where(garde:true).all
    end

    def show 
          
    end

    def new
        @garde = Garde.new
    end

    def edit  
    end

   

    def create
        @pharm = Pharm.find(params[:pharm_id])
        @garde = @pharm.gardes.new(garde_params)
        if @garde.save
            redirect_to @pharm, notice: 'Garde was successfully created.' 
        else
            render :new 
        end
    end

    def update
        @pharm = Pharm.find(params[:pharm_id])
        if @garde.update(town_params)
            redirect_to @pharm, notice: 'Garde was successfully edited.' 
        else
            render :edit 
        end
    end

    def destroy
        @town.destroy redirect_to pharms_url, notice: 'Garde was successfully destroyed.' 
    end

    private
        def set_garde
            @garde = Garde.find(params[:id])
        end

        def garde_params
            params.require(:garde).permit(:garde, :star_date, :end_date, :pharm_id)
        end
end
