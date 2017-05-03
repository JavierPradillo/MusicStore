class CartsController < ApplicationController
  def index  
    if Cart.first.present?
      @cart = Cart.first
    else
      @cart = Cart.create
    end    
    @purchases = @cart.purchases
  end

  def empty
    Cart.first.destroy
    Cart.create
    redirect_to(albums_path, notice: "Se ha vaciado el carro")
  end

  def checkout
    if Cart.first.present?
      @cart = Cart.first
    else
      @cart = Cart.create
    end    
    @purchases = @cart.purchases    
    render pdf: "checkout", encoding: "utf-8"

  end

end
