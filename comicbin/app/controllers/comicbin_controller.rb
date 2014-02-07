class ComicbinController < ApplicationController

  def index
    @comics = Comic.all
    render 'index'
  end

  def show
    comic_id = params["comic_id"]
    @comic = Comic.find_by :id => comic_id

    render 'show'
  end

  def delete
    comic_id = params["comic_id"]
    c = Comic.find(comic_id)
    c.destroy
    redirect_to "/comicbin"
  end

  def new
    render 'new'
  end

  def create
      c = Comic.new
      c.title = params["title"]
      c.description = params["description"]
      c.image = params["image"]
      c.save
      redirect_to "/comicbin/#{c.id}"
  end
end
