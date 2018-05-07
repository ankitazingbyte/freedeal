class LatestsController < ApplicationController
  before_action :set_latest, only: [:show, :edit, :update, :destroy]

  # GET /latests
  # GET /latests.json
  def index
    @latests = Latest.all
    @latests = Latest.paginate(page: params[:page], per_page: 3)
    @latests = Latest.search(params[:search]) if params[:search].present?
  end

  # GET /latests/1
  # GET /latests/1.json
  def show
  end

  # GET /latests/new
  def new
    @latest = Latest.new
  end

  # GET /latests/1/edit
  def edit
  end

  # POST /latests
  # POST /latests.json
  def create
    @latest = Latest.new(latest_params)

    respond_to do |format|
      if @latest.save
        format.html { redirect_to @latest, notice: 'Latest was successfully created.' }
        format.json { render :show, status: :created, location: @latest }
      else
        format.html { render :new }
        format.json { render json: @latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latests/1
  # PATCH/PUT /latests/1.json
  def update
    respond_to do |format|
      if @latest.update(latest_params)
        format.html { redirect_to @latest, notice: 'Latest was successfully updated.' }
        format.json { render :show, status: :ok, location: @latest }
      else
        format.html { render :edit }
        format.json { render json: @latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latests/1
  # DELETE /latests/1.json
  def destroy
    @latest.destroy
    respond_to do |format|
      format.html { redirect_to latests_url, notice: 'Latest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latest
      @latest = Latest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def latest_params
      params.require(:latest).permit(:image, :title, :description, :link, :discount)
    end
end
