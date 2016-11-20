class RoutesController < ApplicationController

  def index 
    @routes = Route.all 
  end
  
  def new

  end
  
  def create
    @route = Route.new(title: params[:title], weight: params[:title], color: params[:color], description: params[:description])
    @route.save 
    redirect_to "/routes/#{@route.id}" 
  end

  def edit
    @route = Route.find_by(id: params[:id])
  end
 
  def show
    @route = Route.find_by(id: params[:id])
  end

  def update
    @route = Route.new(title: params[:title], weight: params[:title], color: params[:color], description: params[:description])
    @route.save  
    redirect_to "/routes/#{@route.id}" 
  end

  def destroy
    route = Route.find_by(id: params[:id])
    route.destroy
    redirect_to "/routes"
  end  

end
