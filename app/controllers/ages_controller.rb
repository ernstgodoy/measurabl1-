class AgesController < ApplicationController
  def index
    ages = Age.all
    render json: ages
  end
        
  def show
    age = Age.find(params[:id])
    render json: age.to_json
  end
        
  def create
    age = Age.create(age_params)
        
    if age.valid?
      render json: age
    else
      render json: age.errors
    end
  end
        
  def age_params
    params.require(:age).permit(:name_id, :age)
  end
end
