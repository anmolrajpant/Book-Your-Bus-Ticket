class BuslistsController < ApplicationController
  before_action :set_buslist, only: [:show, :edit, :update, :destroy]

  # GET /buslists
  # GET /buslists.json
  def index
    @buslists = Buslist.all
  end

  # GET /buslists/1
  # GET /buslists/1.json
  def show
  end

  # GET /buslists/new
  def new
    @buslist = Buslist.new
  end

  # GET /buslists/1/edit
  def edit
  end

  # POST /buslists
  # POST /buslists.json
  def create
    @buslist = Buslist.new(buslist_params)

    respond_to do |format|
      if @buslist.save
        format.html { redirect_to @buslist, notice: 'Buslist was successfully created.' }
        format.json { render :show, status: :created, location: @buslist }
      else
        format.html { render :new }
        format.json { render json: @buslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buslists/1
  # PATCH/PUT /buslists/1.json
  def update
    respond_to do |format|
      if @buslist.update(buslist_params)
        format.html { redirect_to @buslist, notice: 'Buslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @buslist }
      else
        format.html { render :edit }
        format.json { render json: @buslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buslists/1
  # DELETE /buslists/1.json
  def destroy
    @buslist.destroy
    respond_to do |format|
      format.html { redirect_to buslists_url, notice: 'Buslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buslist
      @buslist = Buslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buslist_params
      params.require(:buslist).permit(:starting, :ending, :time, :busNo, :price)
    end
end
