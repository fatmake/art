class ArtworksController < ApplicationController
    # def index 
    #    @artworks = Artwork.all
    # end

    def new
        @artist = Artist.find(params[:artist_id])
        @artwork = Artwork.new
    end
    def show 
        @artwork = Artwork.find(params[:id])
       
    end

    def create 
        artist = Artist.find(params[:artwork][:artist_id])
        Artwork.create(params.require(:artwork).permit(:title, :date, :price, :artist_id, :artwork_type, :img))

        redirect_to artist
    end

    def edit
        @artist = Artist.find(params[:artist_id])
        @artwork = Artwork.find(params[:id])  
    end

    def update
        artist = Artist.find(params[:artwork][:artist_id])
        Artwork.find(params[:id]).update(params.require(:artwork).permit(:title, :date, :price, :artist_id, :artwork_type, :img))
          
        redirect_to artists_path
    end

    
end
