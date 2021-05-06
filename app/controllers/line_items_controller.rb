class LineItemsController < ApplicationController
  include CurrentCart
  before_action :find_cart, only: [:create]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  def create
    product = Product.find(params[:product_id])
    line_item = @cart.add_product(product)

    notice = line_item.save ? '已成功加入購物車' : '加入購物車發生錯誤'
    redirect_to root_path, notice: notice
  end

  private
    def line_items_params
      params.require(:line_item).permit(:product_id)
    end

    def invalid_cart
      redirect_to root_path, notice: '無效的購物車'
    end
end
