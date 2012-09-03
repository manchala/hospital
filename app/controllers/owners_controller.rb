class OwnersController < ApplicationController
  def show
      @pet = Pet.find(params[:id])
  end
end
