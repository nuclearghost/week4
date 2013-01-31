class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by_id(params[:id])
  end

  def new
    @director = Director.new
  end

  # {"utf8"=>"✓", "authenticity_token"=>"RsT3EZqXvYXArZmBaTLwU1fxUIEkIh5kBiYlH/Ga750=", "director"=>{"name"=>"Me"}, "commit"=>"Create Director"}

  def create
    @director = Director.new
    @director.name = params["director"]["name"]
    @director.save
    redirect_to directors_url
  end

end






