class Article < ApplicationRecord
	belongs_to :category
	has_many :comment
	validates_presence_of :title, :content, :category_id
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }, size: { in: 0..10.megabytes }
end
