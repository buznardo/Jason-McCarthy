class PhotosController < ApplicationController
  def create
    @shoot = Shoot.find(params[:shoot_id])
    @photo = @shoot.photos.create(params[:photo])
    redirect_to shoot_path(@shoot)
  end
end
