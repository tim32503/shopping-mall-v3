module ProductHelper
  def product_img(product)
    color1, color2  = img_color(product)

    image_tag "https://fakeimg.pl/350x200/#{color1},#{color2}/#{color2},#{color1}/?text=#{product.abbr_title}&font=lobster"
  end

  private
    def img_color(product)
      color1 = (product.title.to_i(36) % 255).to_s.rjust(3, "0")
      color2 = (product.title.to_i(24) % 255).to_s.rjust(3, "0")
      return color1, color2
    end
end
