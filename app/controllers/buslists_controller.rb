class BuslistsController < ApplicationController
  before_action :set_buslist, only: [:show, :edit, :update, :destroy]

  def index
    @buslists = Buslist.all
  end

  def new
    @buslist = Buslist.new
  end

  def edit
  end

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

  def destroy
    @buslist.destroy
    respond_to do |format|
      format.html { redirect_to buslists_url, notice: 'Buslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_buslist
      @buslist = Buslist.find(params[:id])
    end

    def buslist_params
      params.require(:buslist).permit(:starting, :ending, :time, :busNo, :price)
    end
end
