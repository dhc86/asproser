class Product < ActiveRecord::Base
belongs_to :user
belongs_to :category

has_attached_file :product_image, styles: { product_index: "300x300>", product_show: "400x400>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\Z/
end
