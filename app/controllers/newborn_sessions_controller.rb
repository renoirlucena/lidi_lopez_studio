# app/controllers/newborn_sessions_controller.rb

class NewbornSessionsController < ApplicationController
  before_action :set_newborn_session, only: [:show, :edit, :update, :destroy]

  # GET /newborn_sessions
  def index
    @newborn_sessions = NewbornSession.all
  end

  # GET /newborn_sessions/1
  def show
  end

  # GET /newborn_sessions/new
  def new
    @newborn_session = NewbornSession.new
  end

  # GET /newborn_sessions/1/edit
  def edit
  end

  # POST /newborn_sessions
  def create
    @newborn_session = NewbornSession.new(newborn_session_params)

    if @newborn_session.save
      redirect_to @newborn_session, notice: 'Newborn session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /newborn_sessions/1
  def update
    if @newborn_session.update(newborn_session_params)
      redirect_to @newborn_session, notice: 'Newborn session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /newborn_sessions/1
  def destroy
    @newborn_session.destroy
    redirect_to newborn_sessions_url, notice: 'Newborn session was successfully destroyed.'
  end

  private

  def set_newborn_session
    @newborn_session = NewbornSession.find(params[:id])
  end

  def newborn_session_params
    params.require(:newborn_session).permit(:name, :description, :price)
  end
end
