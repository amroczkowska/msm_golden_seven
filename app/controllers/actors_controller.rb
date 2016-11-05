class ActorsController < ApplicationController

  def show
  @actor = Actor.find(params[:id])
  end

  def index
    @actors = Actor.all
  end


  def create_row
      @actor= Actor.new
      @actor.name = params[:name]
      @actor.dob = params[:dob]
      @actor.bio = params[:bio]
      @actor.image_url = params[:image_url]


      @actor.save

    render("show")
    end
  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])
    @actor.name = params[:the_name]
    @actor.dob = params[:the_dob]
    @actor.bio = params[:the_bio]
    @actor.image_url = params[:the_image_url]

    @actor.save

  render("show")
  end




  def delete
    @actor = Actor.find(params[:id])

    @actor.destroy
  end



end
