class NamesController < ApplicationController
  def index
    names = Name.all
    render json: names
  end
    
    
  def show
    name = Name.find(params[:id])
    render json: name.to_json(:include => :ages)
  end
    
  def create
    name = Name.create(name_params)
    
    if name.valid?
      render json: name
    else
      render json: name.errors
    end
  end
    
  def name_params
    params.require(:name).permit(:firstName, :lastName)
  end
end
