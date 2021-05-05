module StoreHelper
  def product_img(title)
    color1 = (rand() * 255).to_i.to_s.rjust(3, "0")
    color2 = (rand() * 255).to_i.to_s.rjust(3, "0")

    image_tag "https://fakeimg.pl/350x200/#{color1},#{color2}/#{color2},#{color1}/?text=#{title}&font=lobster"
  end
end
