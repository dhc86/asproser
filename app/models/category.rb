class Category < ActiveRecord::Base
  has_many :products

  has_attached_file :category_image, styles: { category_index: "700x450>", category_show: "400x400>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :category_image, content_type: /\Aimage\/.*\Z/
end
