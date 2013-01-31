class DirectorsController < ApplicationController

  def destroy
    @director = Director.find_by_id(params[:id])
    @director.destroy
    redirect_to directors_url
  end

  def edit
    @director = Director.find_by_id(params[:id])
  end

  def update
    @director = Director.find_by_id(params[:id])
    @director.name = params[:director][:name]
    @director.save
    redirect_to directors_url
  end

  def index
    @directors = Director.all

    respond_to do |format|
      format.html
      format.json { render :json => @directors }
    end
  end

  def show
    @director = Director.find_by_id(params[:id])
  end

  def new
    @director = Director.new
  end

  # {"utf8"=>"✓", "authenticity_token"=>"RsT3EZqXvYXArZmBaTLwU1fxUIEkIh5kBiYlH/Ga750=", "director"=>{"name"=>"Me"}, "commit"=>"Create Director"}

  # { "name" => "Steven Spielberg"}
  def create
    @director = Director.new(params[:director])
    # @director.name = params["director"]["name"]
    @director.save
    redirect_to directors_url
  end

end






