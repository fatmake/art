class ArtistsController < ApplicationController

    before_action :authenticate_user!

    def index 
        @artists = Artist.all
        @artist = Artist.where(user_id: current_user.id)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def show 
        @artist = Artist.find(params[:id])
        @artworks = @artist.artworks
    end

    def new
        @artist = Artist.new
    end

    def create
        # @artist.user_id = current_user.id
        @artist = Artist.new(params.require(:artist).permit(:name, :age, :style, :img))
        Artist.create(params.require(:artist).permit(:name, :age, :style, :img))
        redirect_to artists_path #artist path = index
    end

    #def destroy
       # Artist.find(params[:id]).destroy
      
        #redirect_to artists_path
    #end

    def update
        artist = Artist.find(params[:id])
        artist.update(params.require(:artist).permit(:name, :age, :style, :img))
          
        redirect_to artists_path
    end

    def destroy   
        @artist = Artist.find(params[:id]).destroy  
        if @artist.delete   
          flash[:notice] = 'Artist deleted!'   
          redirect_to artists_path   
        else   
          flash[:error] = 'Failed to delete this Artist!'   
          render :destroy   
        end   
    end 

end
