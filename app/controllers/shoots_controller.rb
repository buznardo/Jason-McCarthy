class ShootsController < ApplicationController

  def index
    if params[:tag_name].present?
      @tag = Tag.find_by_name(params[:tag_name])
      @shoots = @tag.shoots.all
    else
      @shoots = Shoot.all(:order => "created_at DESC")
    end
    # Need this so that we can interator over it and display
    # a link for each tag.
    @tags = Tag.all
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
    
    if @shoot.save
      flash[:success] = "Shoot successfully created!"
      redirect_to @shoot
    else
        render 'new'
    end
  end

  def update
    @shoot = Shoot.find(params[:id])

      if @shoot.update_attributes(params[:shoot])
        flash[:success] = "Shoot successfully updated!"
        redirect_to @shoot
      else
        format.html { render action: "edit" }
        format.json { render json: @shoot.errors, status: :unprocessable_entity }
      end
  end

  def destroy
    @shoot = Shoot.find(params[:id])
    @shoot.destroy
    flash[:success] = "Shoot   successfully deleted!"
    redirect_to shoots_url
  end
end
