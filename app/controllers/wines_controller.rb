class WinesController < ApplicationController
  def index
    @wines = Wine.includes(:grapes).all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)

    respond_to do |format|
      if @wine.save
        format.html { redirect_to wines_path, notice: 'Wine was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def wine_params
    params.require(:wine).permit(:name)
  end
end
