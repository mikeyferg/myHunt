module RssParser
  require 'feedjira'

  def self.rss
    @feed = Feedjira::Feed.fetch_and_parse("http://feeds.mashable.com/Mashable")
    @entry = @feed.entries
  end


end
