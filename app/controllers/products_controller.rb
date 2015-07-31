class ProductsController < ApplicationController
  require 'rss_parser.rb'
  def show
    @product = find_product
    @entry = RssParser.rss
 end

  private
  def find_product
    @find_product = Product.find(params[:id])
  end

end
