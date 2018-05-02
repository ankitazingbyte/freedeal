class Product3sController < ApplicationController
  before_action :set_product3, only: [:show, :edit, :update, :destroy]

  # GET /product3s
  # GET /product3s.json
  def index
    @product3s = Product3.all
  end

  # GET /product3s/1
  # GET /product3s/1.json
  def show
  end

  # GET /product3s/new
  def new
    @product3 = Product3.new
  end

  # GET /product3s/1/edit
  def edit
  end

  # POST /product3s
  # POST /product3s.json
  def create
    @product3 = Product3.new(product3_params)

    respond_to do |format|
      if @product3.save
        format.html { redirect_to @product3, notice: 'Product3 was successfully created.' }
        format.json { render :show, status: :created, location: @product3 }
      else
        format.html { render :new }
        format.json { render json: @product3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product3s/1
  # PATCH/PUT /product3s/1.json
  def update
    respond_to do |format|
      if @product3.update(product3_params)
        format.html { redirect_to @product3, notice: 'Product3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @product3 }
      else
        format.html { render :edit }
        format.json { render json: @product3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product3s/1
  # DELETE /product3s/1.json
  def destroy
    @product3.destroy
    respond_to do |format|
      format.html { redirect_to product3s_url, notice: 'Product3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product3
      @product3 = Product3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product3_params
      params.require(:product3).permit(:image, :title, :url)
    end
end
