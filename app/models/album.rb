class Album < ApplicationRecord
  belongs_to :genre

  has_attached_file :cover, styles: { thumb: "250x250>" }, default_url: "/images/:style/missing.png", dependent: :destroy
  
  validates_presence_of :name, :artist, :year, :description, :price, :genre_id

  validates_attachment_presence :cover
  validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/png']
end