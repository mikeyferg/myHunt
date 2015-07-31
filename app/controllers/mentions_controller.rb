class MentionsController < ApplicationController
  require 'rss_parser.rb'
  def show
    @mention = find_show
  end

  private
  def find_show
    @find_show = Mention.find(params[:id])
  end
end
