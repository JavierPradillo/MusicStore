class PurchasesController < ApplicationController
    def destroy
    Purchase.find(params[:id]).destroy
    redirect_to(carts_path, notice: "Se ha eliminado el artículo")
  end
end
