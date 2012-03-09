class ShootsController < ApplicationController

  def index
    #if params[:tag_name]
    #  @shoots = Shoot.where(tags: params[:tag_name])
    @shoots = Shoot.all(:order => "created_at DESC")
    #@tags = Tag.all
    #@tags.each do |tag|
    #  link_to tag.name, shoots_path(tag_name: tag.name)
    #end
  end

  def show
    @shoot = Shoot.find(params[:id])
  end

  def new
    @shoot = Shoot.new
  end

  def edit
    @shoot = Shoot.find(params[:id])
  end

  def create
    @shoot = Shoot.new(params[:shoot])

    respond_to do |format|
      if @shoot.save
        format.html { redirect_to @shoot, notice: 'Shoot was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @shoot = Shoot.find(params[:id])

    respond_to do |format|
      if @shoot.update_attributes(params[:shoot])
        format.html { redirect_to @shoot, notice: 'Shoot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shoot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shoot = Shoot.find(params[:id])
    @shoot.destroy

    respond_to do |format|
      format.html { redirect_to shoots_url }
      format.json { head :no_content }
    end
  end
end
