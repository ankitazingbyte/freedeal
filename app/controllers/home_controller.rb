class HomeController < ApplicationController
  def index
  	@deals = Deal.all
     @deals = Deal.all.paginate(page: params[:page], per_page: 6)
  end
end
