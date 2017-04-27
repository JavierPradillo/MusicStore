class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show  
    @genre = Genre.find(params[:id])
    @albums = @genre.albums.paginate(:page => params[:page], :per_page => 3)
  end

end