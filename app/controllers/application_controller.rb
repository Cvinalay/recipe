class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  
  def show
    @recipes= Recipe2.find_by_id(params['id'])
  
    render 'show'
    end
  
 def new
   
   
 end
  
  def create
    g = Recipe2.new
    g.title = params['title']
    g.url = params['url']
    g.ingredients = params['ingredients']
    g.steps = params['steps']
    g.save
    redirect_to "/recipe/#{ g.id }"
 end
  
 def edit
   @recipes = Recipe2.find_by_id(params['id'])
end
  def update
    g = Recipe2.find_by_id(params['id'])
    g.title = params['title']
    g.url = params['url']
    g.ingredients = params['ingredients']
    g.steps = params['steps']
    g.save
    redirect_to "/recipe/#{ g.id }"
end
  def destroy
  g = Recipe2.find_by_id(params['id'])
  g.destroy
end
end