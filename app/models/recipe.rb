class Recipe < ActiveRecord::Base
  include HTTParty
  default_params key: ENV['FOOD2FORK_KEY'] || "229645fe19c3f570dc5d18b2eb96229f"
  format :json
  hostport	=	ENV['FOOD2FORK_SERVER_AND_PORT']	||	'www.food2fork.com'
  base_uri	"http://#{hostport}/api"

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
