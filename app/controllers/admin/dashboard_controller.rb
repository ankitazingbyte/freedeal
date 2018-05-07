class Admin::DashboardController < Admin::AdminController
	def index
    	@deals = Deal.all
        @deals = Deal.paginate(page: params[:page], per_page: 3)
        @deals = Deal.search(params[:search]) if params[:search].present?
        @products = Product.all
        @product2s = Product2.all
        @product3s = Product3.all
        @product4s = Product4.all
        @product5s = Product5.all
	end
end