# app/controllers/family_sessions_controller.rb

class FamilySessionsController < ApplicationController
  before_action :set_family_session, only: [:show, :edit, :update, :destroy]

  # GET /family_sessions
  def index
    @family_sessions = FamilySession.all
  end

  # GET /family_sessions/1
  def show
  end

  # GET /family_sessions/new
  def new
    @family_session = FamilySession.new
  end

  # GET /family_sessions/1/edit
  def edit
  end

  # POST /family_sessions
  def create
    @family_session = FamilySession.new(family_session_params)

    if @family_session.save
      redirect_to @family_session, notice: 'Family session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /family_sessions/1
  def update
    if @family_session.update(family_session_params)
      redirect_to @family_session, notice: 'Family session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /family_sessions/1
  def destroy
    @family_session.destroy
    redirect_to family_sessions_url, notice: 'Family session was successfully destroyed.'
  end

  private

  def set_family_session
    @family_session = FamilySession.find(params[:id])
  end

  def family_session_params
    params.require(:family_session).permit(:name, :description, :price)
  end
end
