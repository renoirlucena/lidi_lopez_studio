# app/controllers/maternities_controller.rb

class MaternitiesController < ApplicationController
  before_action :set_maternity, only: [:show, :edit, :update, :destroy]

  # GET /maternities
  def index
    @maternities = Maternity.all
  end

  # GET /maternities/1
  def show
  end

  # GET /maternities/new
  def new
    @maternity = Maternity.new
  end

  # GET /maternities/1/edit
  def edit
  end

  # POST /maternities
  def create
    @maternity = Maternity.new(maternity_params)

    if @maternity.save
      redirect_to @maternity, notice: 'Maternity item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /maternities/1
  def update
    if @maternity.update(maternity_params)
      redirect_to @maternity, notice: 'Maternity item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /maternities/1
  def destroy
    @maternity.destroy
    redirect_to maternities_url, notice: 'Maternity item was successfully destroyed.'
  end

  private

  def set_maternity
    @maternity = Maternity.find(params[:id])
  end

  def maternity_params
    params.require(:maternity).permit(:name, :description, :price)
  end
end
