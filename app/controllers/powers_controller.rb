class PowersController < ApplicationController
  def index
    @powers = Power.all
  end
  def show
    @power = Power.find(params[:id])
    @name = @power.name
    @description = @power.description
  end
end
