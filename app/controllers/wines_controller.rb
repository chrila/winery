class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @wines = Wine.all.order(:id)
  end

  def show
  end

  def new
    @wine = Wine.new
    @wine.grape_wines.build.build_grape
  end

  def edit
  end

  def create
    @wine = Wine.new(wine_params)

    respond_to do |format|
      if @wine.save
        format.html { redirect_to @wine, notice: 'Wine was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @wine.update(wine_params)
        format.html { redirect_to @wine, notice: 'Wine was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @wine.destroy
        format.html { redirect_to wines_path, notice: 'Wine was successfully deleted.' }
      else
        format.html { redirect_to wines_path, alert: 'Wine could not be deleted.' }
      end
    end
  end

  private

  def wine_params
    params.require(:wine).permit(:name, grape_wines_attributes: [:percentage, :_destroy, :id, :grape_id])
  end

  def set_wine
    @wine = Wine.find(params[:id])
  end
end
