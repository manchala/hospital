class OwnersController < ApplicationController
  def show
      @pet = Pet.find(params[:id])
      @item = @pet.appointments.find(params[:id])
  end
end
