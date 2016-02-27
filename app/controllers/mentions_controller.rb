class MentionsController < ApplicationController
  # Will subscribe your application to the feed object and will retrieve its past content yielded as a JSON string in body.
  # body, ok = SuperfeedrEngine::Engine.subscribe(feed, {:retrieve => true})
  #
  # # Will retrieve the past content of a feed (but you must be subscribed to it first)
  # body, ok = SuperfeedrEngine::Engine.retrieve(feed)

  def index


  end
  def show
    @mention = find_show
  end

  private
  def find_show
    @find_show = Mention.find(params[:id])
  end
end
