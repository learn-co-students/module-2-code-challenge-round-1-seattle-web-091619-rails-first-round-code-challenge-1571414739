class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
        @heroine = Heroine.find(params[:id])
        @power = Power.find(@heroine.power_id)
  end

  def new
    @heroine = Heroine.new
    @heroine.name = params[:name]
    @heroine.super_name = params[:super_name]
    @heroine.power_id = params[:power_id]
    @heroine.save
    if @heroine.save
        redirect :index
    else
        render :new
    end


  end
  

end
