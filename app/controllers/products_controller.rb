class ProductsController < ApplicationController

  def show
    @product = find_product


  end

  private
  def find_product
    @find_product = Product.find(params[:id])
  end

end
