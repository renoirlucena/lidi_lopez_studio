# app/controllers/baby_sessions_controller.rb

class BabySessionsController < ApplicationController
  before_action :set_baby_session, only: [:show, :edit, :update, :destroy]

  # GET /baby_sessions
  def index
    @baby_sessions = BabySession.all
  end

  # GET /baby_sessions/1
  def show
  end

  # GET /baby_sessions/new
  def new
    @baby_session = BabySession.new
  end

  # GET /baby_sessions/1/edit
  def edit
  end

  # POST /baby_sessions
  def create
    @baby_session = BabySession.new(baby_session_params)

    if @baby_session.save
      redirect_to @baby_session, notice: 'Baby session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /baby_sessions/1
  def update
    if @baby_session.update(baby_session_params)
      redirect_to @baby_session, notice: 'Baby session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /baby_sessions/1
  def destroy
    @baby_session.destroy
    redirect_to baby_sessions_url, notice: 'Baby session was successfully destroyed.'
  end

  private

  def set_baby_session
    @baby_session = BabySession.find(params[:id])
  end

  def baby_session_params
    params.require(:baby_session).permit(:name, :description, :price)
  end
end
