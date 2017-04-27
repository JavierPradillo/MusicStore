class AlbumsController < ApplicationController

  def index
    @albums = Album.paginate(:page => params[:page], :per_page => 3)
  end

  def show  
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
    @genres = Genre.all
  end

  def create
    @album = Album.new(album_param)

    if @album.save
      redirect_to :action => 'index'
    else
      @genres = Genre.all
      render :action => 'new'
    end    
  end

  def edit
    @album = Album.find(params[:id])
    @genres = Genre.all
  end

  def update
    @album = Album.find(params[:id])

    if @album.update_attributes(album_param)
      redirect_to :action => 'show', :id => @album
    else
      @genres = Genre.all
      render :action => 'edit'
    end   
  end

  def destroy
    Album.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def album_param
    params.require(:album).permit(:name, :artist, :year, :description, :price, :genre_id, :cover)
  end
  
end