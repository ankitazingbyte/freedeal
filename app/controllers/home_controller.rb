class HomeController < ApplicationController
  def index
  	@deals = Deal.all
    @deals = Deal.all.paginate(page: params[:page], per_page: 6)
    @products = Product.all
    @product2s = Product2.all
    @product3s = Product3.all
    @product4s = Product4.all
    @product5s = Product5.all
  end
end
