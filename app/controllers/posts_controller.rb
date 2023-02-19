class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
        @place = Place.find_by({"id" => params["company_id"]})
        @post["place_id"] = @place["id"]
    end 

  
    def create
        @thisplace = Place.find_by()

        @post = Post.new
        @post["title"] = params["post"][""]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["contact"]["place_id"]
        @post.save
        redirect_to "/places"
      end

      def show
            @post = Post.find_by({"id" => params["id"]})
      end 

end