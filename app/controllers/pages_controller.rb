class PagesController < ApplicationController

  def home
    # Grab all the photos to use for the random image
    photos = Photo.all
    # if there are any photos in the database
    if photos.any?
      # choose one at random
      @random_photo = photos.sample
    end
  end

  def info
  end
end
