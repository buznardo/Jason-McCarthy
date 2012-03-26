class PhotosController < ApplicationController
  def create
    @shoot = Shoot.find(params[:shoot_id])
    @photo = @shoot.photos.create(params[:photo])
    redirect_to shoot_path(@shoot)
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    
    respond_to do |format|
      format.html { redirect_to shoot_path(@photo.shoot) }
      format.json { head :no_content }
    end
  end
end
