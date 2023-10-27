# app/controllers/child_sessions_controller.rb

class ChildSessionsController < ApplicationController
  before_action :set_child_session, only: [:show, :edit, :update, :destroy]

  # GET /child_sessions
  def index
    @child_sessions = ChildSession.all
  end

  # GET /child_sessions/1
  def show
  end

  # GET /child_sessions/new
  def new
    @child_session = ChildSession.new
  end

  # GET /child_sessions/1/edit
  def edit
  end

  # POST /child_sessions
  def create
    @child_session = ChildSession.new(child_session_params)

    if @child_session.save
      redirect_to @child_session, notice: 'Child session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /child_sessions/1
  def update
    if @child_session.update(child_session_params)
      redirect_to @child_session, notice: 'Child session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /child_sessions/1
  def destroy
    @child_session.destroy
    redirect_to child_sessions_url, notice: 'Child session was successfully destroyed.'
  end

  private

  def set_child_session
    @child_session = ChildSession.find(params[:id])
  end

  def child_session_params
    params.require(:child_session).permit(:name, :description, :price)
  end
end
