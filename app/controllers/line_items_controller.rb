class LineItemsController < ApplicationController
  before_action :find_cart, only: [:create]

  def create
    if user_signed_in?
      product = Product.find(params[:product_id])
      line_item = @cart.add_product(product)

      notice = line_item.save ? "已成功加入購物車" : "加入購物車發生錯誤"
      redirect_to root_path, notice: notice
    else
      redirect_to root_path, notice: "請先登入會員"
    end
  end

  private
    def line_items_params
      params.require(:line_item).permit(:product_id)
    end
end
