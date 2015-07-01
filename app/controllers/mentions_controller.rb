class MentionsController < ApplicationController
  def show
    @mention = find_show
  end

  private
  def find_show
    @find_show = Mention.find(params[:id])
  end
end
