# app/controllers/cake_smash_sessions_controller.rb

class CakeSmashSessionsController < ApplicationController
  before_action :set_cake_smash_session, only: [:show, :edit, :update, :destroy]

  # GET /cake_smash_sessions
  def index
    @cake_smash_sessions = CakeSmashSession.all
  end

  # GET /cake_smash_sessions/1
  def show
  end

  # GET /cake_smash_sessions/new
  def new
    @cake_smash_session = CakeSmashSession.new
  end

  # GET /cake_smash_sessions/1/edit
  def edit
  end

  # POST /cake_smash_sessions
  def create
    @cake_smash_session = CakeSmashSession.new(cake_smash_session_params)

    if @cake_smash_session.save
      redirect_to @cake_smash_session, notice: 'Cake Smash session was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cake_smash_sessions/1
  def update
    if @cake_smash_session.update(cake_smash_session_params)
      redirect_to @cake_smash_session, notice: 'Cake Smash session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cake_smash_sessions/1
  def destroy
    @cake_smash_session.destroy
    redirect_to cake_smash_sessions_url, notice: 'Cake Smash session was successfully destroyed.'
  end

  private

  def set_cake_smash_session
    @cake_smash_session = CakeSmashSession.find(params[:id])
  end

  def cake_smash_session_params
    params.require(:cake_smash_session).permit(:name, :description, :price)
  end
end
