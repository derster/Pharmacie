class Api::V1::PharmsController < ApplicationController
    before_action :set_pharm, except: [:index]
    def index
        if params[:search]
            @pharms = Pharm.all.where(commune:params[:search]).where(garde:true)
        else
            @pharms = Pharm.all.where(garde:true)
        end
    end

    def show
    end
    
    private
        def set_pharm
            @pharm = Pharm.find(params[:id])
        end
end