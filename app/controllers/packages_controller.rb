# app/controllers/packages_controller.rb

class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  def index
    @packages = Package.all
  end

  def show
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)

    if @package.save
      redirect_to @package, notice: 'Package was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @package.update(package_params)
      redirect_to @package, notice: 'Package was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @package.destroy
    redirect_to packages_url, notice: 'Package was successfully destroyed.'
  end

  private

  def set_package
    @package = Package.find(params[:id])
  end

  def package_params
    params.require(:package).permit(:name, :description, :price)
  end
end
