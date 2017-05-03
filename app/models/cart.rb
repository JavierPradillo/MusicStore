class Cart < ApplicationRecord
  has_many :purchases
  has_many :albums, through: :purchases  

  def total
    total = 0
    purchases.each do |purchase|
      total += purchase.album.price
    end  
    total
  end
end
