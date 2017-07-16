class Api::V1::GardesController < ApplicationController
    before_action :set_garde, :set_pharm,  except: [:index, :show]
    def index
        if params[:search]
            @gardes = Garde.includes(:pharm).all
        else
            @gardes = Garde.includes(:pharm).all
        end
    end

    def show
    end
    
    private

        def set_pharm
            @garde = Garde.find(params[:id])
        end

        def set_pharm
            @pharm = Pharm.find(params[:id])
        end
end