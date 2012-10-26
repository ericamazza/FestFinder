class FestivalsController < ApplicationController
  
  def edit
    @fest = Festival.find_by_id(params[:id])
  end
  
  def update
    p = Festival.find_by_id(params[:id])
    p.name = params[:name]
    p.date = params[:date]
    p.city = params[:city]
    p.state = params[:state]
    p.save
    
    redirect_to "/MyFestivals/#{p.id}"
  end
  
  def index
    @festivals = Festival.all
  end
  
  def show
    @fest = Festival.find_by_id(params[:id])
  end
  
  def new
  end
  
  def create
    p = Festival.new
    p.name = params[:name]
    p.date = params[:date]
    p.city = params[:city]
    p.state = params[:state]
    p.save
    
    redirect_to "/MyFestivals"
  end
  
  
  
  
  def delete
    p = Festival.find_by_id(params[:id])
    p.destroy
    
    redirect_to "/MyFestivals"
  end
  
  
end