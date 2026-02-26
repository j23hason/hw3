class EntriesController < ApplicationController
  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new
    @entry["place_id"] = params["place_id"]
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end
end