class DirectorsController < ApplicationController

  def show
  @director = Director.find(params[:id])
  end

  def index
    @directors = Director.all
  end


  def create_row
      @director= Director.new
      @director.name = params[:name]
      @director.dob = params[:dob]
      @director.bio = params[:bio]
      @director.image_url = params[:image_url]


      @director.save

    render("show")
    end
  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])
    @director.name = params[:the_name]
    @director.dob = params[:the_dob]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]


    @director.save

  render("show")
  end




  def delete
    @director = Director.find(params[:id])

    @director.destroy
  end









end
