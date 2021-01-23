class GrapesController < ApplicationController
  before_action :set_grape, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @grapes = Grape.all.order(:id)
  end

  def show
  end

  def new
    @grape = Grape.new
  end

  def edit
  end

  def create
    @grape = Grape.new(grape_params)

    respond_to do |format|
      if @grape.save
        format.html { redirect_to @grape, notice: 'Grape was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @grape.update(grape_params)
        format.html { redirect_to @grape, notice: 'Grape was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @grape.destroy
        format.html { redirect_to grapes_path, notice: 'Grape was successfully deleted.' }
      else
        format.html { redirect_to grapes_path, alert: 'Grape could not be deleted.' }
      end
    end
  end

  private

  def grape_params
    params.require(:grape).permit(:name)
  end

  def set_grape
    @grape = Grape.find(params[:id])
  end
end
