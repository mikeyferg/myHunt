
module ProductHunter

  def self.get_user(user)
    #association between user & authentications makes this possible
    auth = user.identities.where(provider: "producthunt").first
    #establish api connection WITH user permissions
    connect = ProductHunt::Client.new(auth.oauth_token)
    #call method user select specific info for user
    user = connect.user(auth.uid)
    return user
  end

  def self.get_user_upvoted_product_details(user)
    user_info = ProductHunter.get_user(user)
  #binding.pry
    votes_array = user_info["votes"]

    votes_array.each do |vote|
      ph_post_id = vote["post"]["id"]
      ph_post_name = vote["post"]["name"]
      ph_post_tagline = vote["post"]["tagline"]
      ph_post_screenshot_url = vote["post"]["screenshot_url"]["850px"]

      create_product(user, ph_post_id, ph_post_name, ph_post_tagline, ph_post_screenshot_url)
    end
  end

    def self.create_product(user, ph_post_id, ph_post_name, ph_post_tagline, ph_post_screenshot_url)
      if Product.exists?(ph_post_id: ph_post_id) && user.products.any?{|entry| entry.ph_post_id == ph_post_id}
      puts 'bye'
      elsif Product.exists?(ph_post_id: ph_post_id)
        user.products.push(Product.where(:ph_post_id => ph_post_id))
      else
         user.products.push(Product.create(ph_post_id: ph_post_id, ph_post_name: ph_post_name, ph_post_tagline: ph_post_name, ph_post_screenshot_url: ph_post_screenshot_url))
      end
    end

end
