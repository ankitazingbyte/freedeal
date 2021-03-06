class CoupensController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :index], raise: false
  before_action :set_coupen, only: [:show, :edit, :update, :destroy]

  # GET /coupens
  # GET /coupens.json
  def index
    @coupens = Coupen.all
    @coupens = Coupen.paginate(page: params[:page], per_page: 8)
  end

  # GET /coupens/1
  # GET /coupens/1.json
  def show
  end

  # GET /coupens/new
  def new
    @coupen = Coupen.new
  end

  # GET /coupens/1/edit
  def edit
  end

  # POST /coupens
  # POST /coupens.json
  def create
    @coupen = Coupen.new(coupen_params)

    respond_to do |format|
      if @coupen.save
        format.html { redirect_to @coupen, notice: 'Coupen was successfully created.' }
        format.json { render :show, status: :created, location: @coupen }
      else
        format.html { render :new }
        format.json { render json: @coupen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coupens/1
  # PATCH/PUT /coupens/1.json
  def update
    respond_to do |format|
      if @coupen.update(coupen_params)
        format.html { redirect_to @coupen, notice: 'Coupen was successfully updated.' }
        format.json { render :show, status: :ok, location: @coupen }
      else
        format.html { render :edit }
        format.json { render json: @coupen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupens/1
  # DELETE /coupens/1.json
  def destroy
    @coupen.destroy
    respond_to do |format|
      format.html { redirect_to coupens_url, notice: 'Coupen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupen
      @coupen = Coupen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coupen_params
      params.require(:coupen).permit(:title, :description, :image, :coupen, :url)
    end
end
