class HomeController < ApplicationController
  def index
  	@deals = Deal.all
    @deals = Deal.paginate(page: params[:page], per_page: 10)
    @deals = Deal.search(params[:search]) if params[:search].present?
    @products = Product.all
    @product2s = Product2.all
    @product3s = Product3.all
    @product4s = Product4.all
    @product5s = Product5.all
  end
  def contact
    @contacts = Contact.all
    @message = Message.new
  end 
  def coupon
    @coupens = Coupen.all
    @coupens = Coupen.paginate(page: params[:page], per_page: 8)
  end
  def latest_offer
    @latests = Latest.all
    @latests = Latest.paginate(page: params[:page], per_page: 8)
    @latests = Latest.search(params[:search]) if params[:search].present?
  end
end
