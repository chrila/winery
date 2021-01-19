class GrapesController < ApplicationController
  def index
    @grapes = Grape.all
  end

  def new
    @grape = Grape.new
  end

  def create
    @grape = Grape.new(grape_params)

    respond_to do |format|
      if @grape.save
        format.html { redirect_to grapes_path, notice: 'Grape was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def grape_params
    params.require(:grape).permit(:name)
  end
end
