class AirticlesController < ApplicationController
  before_action :set_airticle, only: [:show, :edit, :update, :destroy]

  # GET /airticles
  # GET /airticles.json
  def index
    @airticles = Airticle.all
  end

  # GET /airticles/1
  # GET /airticles/1.json
  def show
  end

  # GET /airticles/new
  def new
    @airticle = Airticle.new
  end

  # GET /airticles/1/edit
  def edit
  end

  # POST /airticles
  # POST /airticles.json
  def create
    @airticle = Airticle.new(airticle_params)

    respond_to do |format|
      if @airticle.save
        format.html { redirect_to @airticle, notice: 'Airticle was successfully created.' }
        format.json { render :show, status: :created, location: @airticle }
      else
        format.html { render :new }
        format.json { render json: @airticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airticles/1
  # PATCH/PUT /airticles/1.json
  def update
    respond_to do |format|
      if @airticle.update(airticle_params)
        format.html { redirect_to @airticle, notice: 'Airticle was successfully updated.' }
        format.json { render :show, status: :ok, location: @airticle }
      else
        format.html { render :edit }
        format.json { render json: @airticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airticles/1
  # DELETE /airticles/1.json
  def destroy
    @airticle.destroy
    respond_to do |format|
      format.html { redirect_to airticles_url, notice: 'Airticle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airticle
      @airticle = Airticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airticle_params
      params.require(:airticle).permit(:name, :affiliation, :contactaddress, :phonenumber, :title, :abstract)
    end
end
