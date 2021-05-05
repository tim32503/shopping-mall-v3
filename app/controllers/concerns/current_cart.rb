module CurrentCart
  private
  def find_cart
    @cart = Cart.find(session[:cart9527])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart9527] = @cart.id
  end
end
