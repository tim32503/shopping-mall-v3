class ApplicationController < ActionController::Base
  include CurrentCart

  helper_method :current_cart
end
