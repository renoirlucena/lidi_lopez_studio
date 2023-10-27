class MaternitySessionsController < ApplicationController
  before_action :set_maternity_session, only: [:show, :edit, :update, :destroy]

  def index
    @maternity_sessions = MaternitySession.all
  end

  def show
  end

  def new
    @maternity_session = MaternitySession.new
  end

  def edit
  end

  def create
    @maternity_session = MaternitySession.new(maternity_session_params)

    if @maternity_session.save
      redirect_to @maternity_session, notice: 'Maternity Session was successfully created.'
    else
      render :new
    end
  end

  def update
    if @maternity_session.update(maternity_session_params)
      redirect_to @maternity_session, notice: 'Maternity Session was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @maternity_session.destroy
    redirect_to maternity_sessions_url, notice: 'Maternity Session was successfully destroyed.'
  end

  private

  def set_maternity_session
    @maternity_session = MaternitySession.find(params[:id])
  end

  def maternity_session_params
    params.require(:maternity_session).permit(:name, :description, :price)
  end
end
