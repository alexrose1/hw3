class PlacesController < ApplicationController

    def index 
        @places = Place.all

    end

    def new
        @place = Place.new
        @place_post = Post.new

    end

    def show
        @place = Place.find_by({"id" => params["id"]})
        @place_post = Post.find_by({"place_id" => @place["id"]})
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
    end

end 