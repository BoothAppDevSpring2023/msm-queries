class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directors
    @list_of_directors = Director.all
    render({ :template => "director_templates/index"})
  end
  def wisest
    @oldest= Director.where.not( { :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/eldest"})
  end
  def youngest
    @youngest= Director.where.not( { :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/youngest"})
  end
  def director_details
    the_id = params.fetch("an_id")
    @the_director = Director.where({ :id => the_id}).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id })
    render({ :template => "director_templates/show"})
  end
  def movies
    @list_of_movies = Movie.all
    render({ :template => "movies_templates/index"})
  end
  def movie_details
    the_id = params.fetch("an_id")
    @the_movie = Movie.where({ :id => the_id}).at(0)
    render({ :template => "movies_templates/show"})
  end
  def actors
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index"})
  end
  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id}).at(0)
    @characters = Character.where({ :actor_id => @the_actor.id })
    render({ :template => "actor_templates/show"})
  end
end
