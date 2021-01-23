class SommeliersController < ApplicationController
  before_action :set_sommelier, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_admin

  def index
    @sommeliers = Sommelier.all.order(:id)
  end

  def show
  end

  def new
    @sommelier = Sommelier.new
    @sommelier.journal_sommeliers.build
  end

  def edit
  end

  def create
    @sommelier = Sommelier.new(sommelier_params)

    respond_to do |format|
      if @sommelier.save
        format.html { redirect_to @sommelier, notice: 'Sommelier was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @sommelier.update(sommelier_params)
        format.html { redirect_to @sommelier, notice: 'Sommelier was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @sommelier.destroy
        format.html { redirect_to sommelier_path, notice: 'Sommelier was successfully deleted.' }
      else
        format.html { redirect_to sommelier_path, alert: 'Sommelier could not be deleted.' }
      end
    end
  end

  private

  def sommelier_params
    params.require(:sommelier).permit(:name, :age, :nationality, journal_sommeliers_attributes: [:journal, :role, :_destroy, :id])
  end

  def set_sommelier
    @sommelier = Sommelier.find(params[:id])
  end
end
