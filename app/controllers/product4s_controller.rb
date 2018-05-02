class Product4sController < ApplicationController
  before_action :set_product4, only: [:show, :edit, :update, :destroy]

  # GET /product4s
  # GET /product4s.json
  def index
    @product4s = Product4.all
  end

  # GET /product4s/1
  # GET /product4s/1.json
  def show
  end

  # GET /product4s/new
  def new
    @product4 = Product4.new
  end

  # GET /product4s/1/edit
  def edit
  end

  # POST /product4s
  # POST /product4s.json
  def create
    @product4 = Product4.new(product4_params)

    respond_to do |format|
      if @product4.save
        format.html { redirect_to @product4, notice: 'Product4 was successfully created.' }
        format.json { render :show, status: :created, location: @product4 }
      else
        format.html { render :new }
        format.json { render json: @product4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product4s/1
  # PATCH/PUT /product4s/1.json
  def update
    respond_to do |format|
      if @product4.update(product4_params)
        format.html { redirect_to @product4, notice: 'Product4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @product4 }
      else
        format.html { render :edit }
        format.json { render json: @product4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product4s/1
  # DELETE /product4s/1.json
  def destroy
    @product4.destroy
    respond_to do |format|
      format.html { redirect_to product4s_url, notice: 'Product4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product4
      @product4 = Product4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product4_params
      params.require(:product4).permit(:image, :title, :url)
    end
end
