class HousesController < ApplicationController
  # actions will go here
  def index
    @houses = House.all
  end
  def show
    @house = House.find(params[:id])
  end
  def new
    @house = House.new
  end
  def create
    @house = House.create(house_params)
    redirect_to house_path(@house)
  end
  def edit
    @house = House.update(house_params)
    redirect_to house_path(@house)
  end
  def update
  end
  def delete
  end

  private

  def house_params
    params.require(:post).permit(:title, :author, :body, :img_url)
  end
end
