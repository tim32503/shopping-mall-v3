class Product < ApplicationRecord

  def abbr_title
    title.split(" ").map { |word| word.first }.join("")
  end
end
