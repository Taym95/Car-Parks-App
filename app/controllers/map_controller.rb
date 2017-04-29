class MapController < ApplicationController
  def index

    @parks = Park.all
    @hash = Gmaps4rails.build_markers(@parks) do |park, marker|
      marker.lat park.lat
      marker.lng park.lng
    end

  end
end
