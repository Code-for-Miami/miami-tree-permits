class CitySourcesController < ApplicationController
  before_action :set_city_source, only: [:show, :edit, :update, :destroy]

  # GET /city_sources
  # GET /city_sources.json
  def index
    @city_sources = CitySource.all
  end

  # GET /city_sources/1
  # GET /city_sources/1.json
  def show
  end

  # GET /city_sources/new
  def new
    @city_source = CitySource.new
  end

  # GET /city_sources/1/edit
  def edit
  end

  # POST /city_sources
  # POST /city_sources.json
  def create
    @city_source = CitySource.new(city_source_params)

    respond_to do |format|
      if @city_source.save
        format.html { redirect_to @city_source, notice: 'City source was successfully created.' }
        format.json { render :show, status: :created, location: @city_source }
      else
        format.html { render :new }
        format.json { render json: @city_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_sources/1
  # PATCH/PUT /city_sources/1.json
  def update
    respond_to do |format|
      if @city_source.update(city_source_params)
        format.html { redirect_to @city_source, notice: 'City source was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_source }
      else
        format.html { render :edit }
        format.json { render json: @city_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_sources/1
  # DELETE /city_sources/1.json
  def destroy
    @city_source.destroy
    respond_to do |format|
      format.html { redirect_to city_sources_url, notice: 'City source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_source
      @city_source = CitySource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_source_params
      params.require(:city_source).permit(:planaccepteddate, :location_1, :workitems, :daysincity, :daysincitynumeric, :propertytype, :ispermitfinal, :buildingpermitstatusdescription, :applicationnumber, :totalcost, :certificatedate, :companyaddress, :plancreateddate, :certificatecode, :companycity, :requiredcertificate, :processnumber, :remsqft, :totalsqft, :scopeofwork, :newadditioncost, :issueddate, :totaldaysinplanreview, :additionsqft, :buildingpermitstatusreasondescription, :firstsubmissiondate, :folionumber, :isprivateprovider, :statusdate, :totaldaysinplanreviewnumeric, :miami21zone, :permitnumber, :companyname, :remodelingcost, :deliveryaddress, :companyzip)
    end
end
