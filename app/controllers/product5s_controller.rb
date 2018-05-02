class Product5sController < ApplicationController
  before_action :set_product5, only: [:show, :edit, :update, :destroy]

  # GET /product5s
  # GET /product5s.json
  def index
    @product5s = Product5.all
  end

  # GET /product5s/1
  # GET /product5s/1.json
  def show
  end

  # GET /product5s/new
  def new
    @product5 = Product5.new
  end

  # GET /product5s/1/edit
  def edit
  end

  # POST /product5s
  # POST /product5s.json
  def create
    @product5 = Product5.new(product5_params)

    respond_to do |format|
      if @product5.save
        format.html { redirect_to @product5, notice: 'Product5 was successfully created.' }
        format.json { render :show, status: :created, location: @product5 }
      else
        format.html { render :new }
        format.json { render json: @product5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product5s/1
  # PATCH/PUT /product5s/1.json
  def update
    respond_to do |format|
      if @product5.update(product5_params)
        format.html { redirect_to @product5, notice: 'Product5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @product5 }
      else
        format.html { render :edit }
        format.json { render json: @product5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product5s/1
  # DELETE /product5s/1.json
  def destroy
    @product5.destroy
    respond_to do |format|
      format.html { redirect_to product5s_url, notice: 'Product5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product5
      @product5 = Product5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product5_params
      params.require(:product5).permit(:image, :title, :url)
    end
end
