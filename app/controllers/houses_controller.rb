class HousesController < ApplicationController
  def new
    @house = House.new
  end
  
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path
    else
      render "new"
    end
  end
  
  def index
    @houses =House.all
  end
  
  def show
    @house = House.find(params[:id])
  end
  
  def edit
    @house = House.find(params[:id])
  end
  
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path flash[:notice]= "物件を削除しました！"
  end
  
  private
  
  def house_params
    params.require(:house).permit(:name,:fee,:adress,:old,:comment, near_stations_attributes:[:id, :station])
  end
end
