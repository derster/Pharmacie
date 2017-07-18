class PharmsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit, :new, :update, :destroy]

  # GET /pharms
  # GET /pharms.json
  def index
    if params[:search]
      @pharms = Pharm.all.search(commune:params[:search]).where(garde:true)
    else
      @pharms = Pharm.where(garde:true).all
    end
  end

  # GET /pharms/1
  # GET /pharms/1.json
  def show
    @pharm = Pharm.find(params[:id])
  end

  # GET /pharms/new
  def new

    @pharm = Pharm.new
  end

  # GET /pharms/1/edit
  def edit
    @pharm = Pharm.find(params[:id])
  end

  # POST /pharms
  # POST /pharms.json
  def create
    @pharm = Pharm.find(params[:id])
    @pharm = Pharm.new(pharm_params)
    @pharm.user_id = current_user.id

    respond_to do |format|
      if @pharm.save
        format.html { redirect_to @pharm, notice: 'Pharm was successfully created.' }
        format.json { render :show, status: :created, location: @pharm }
      else
        format.html { render :new }
        format.json { render json: @pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharms/1
  # PATCH/PUT /pharms/1.json
  def update
    @pharm = Pharm.find(params[:id])
    respond_to do |format|
      if @pharm.update(pharm_params)
        format.html { redirect_to @pharm, notice: 'Pharm was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharm }
      else
        format.html { render :edit }
        format.json { render json: @pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharms/1
  # DELETE /pharms/1.json
  def destroy
    @pharm = Pharm.find(params[:id])
    @pharm.destroy
    respond_to do |format|
      format.html { redirect_to pharms_url, notice: 'Pharm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharm
      @pharm = Pharm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharm_params
      params.require(:pharm).permit(:commune, :pharma_name, :owner_name, :description, :tel, :lat, :long, :h_openning, :h_closing, :garde, :star_date, :end_date)
    end
end
