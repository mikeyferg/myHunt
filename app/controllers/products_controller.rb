class ProductsController < ApplicationController
  require 'rss_parser.rb'
  require 'crunchbase.rb'
  require 'net/http'
  def show
    @product = find_product
    #@entry = RssParser.rss
    @product_name_no_spaces = find_product[:ph_post_name].gsub(' ','-')

    uri = URI("https://api.crunchbase.com/v/3/organizations/#{@product_name_no_spaces}")
    params = { :user_key => '434d70bd0012514693f3e9cfeb03c146' }
    uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(uri)

  if res.code == '200'
      @organization = Crunchbase::Model::Organization.get(@product_name_no_spaces)
  end
    #binding.pry
 end

  private
  def find_product
    @find_product = Product.find(params[:id])
  end

end
