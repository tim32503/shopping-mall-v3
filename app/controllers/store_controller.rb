class StoreController < ApplicationController
  def home
    @products = Product.page(params[:page]).per(8)
  end
end
