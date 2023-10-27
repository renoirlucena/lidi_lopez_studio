class CakeSmashSessionsController < ApplicationController
  before_action :set_cake_smash_session, only: %i[ show edit update destroy ]

  # GET /cake_smash_sessions or /cake_smash_sessions.json
  def index
    @cake_smash_sessions = CakeSmashSession.all
  end

  # GET /cake_smash_sessions/1 or /cake_smash_sessions/1.json
  def show
  end

  # GET /cake_smash_sessions/new
  def new
    @cake_smash_session = CakeSmashSession.new
  end

  # GET /cake_smash_sessions/1/edit
  def edit
  end

  # POST /cake_smash_sessions or /cake_smash_sessions.json
  def create
    @cake_smash_session = CakeSmashSession.new(cake_smash_session_params)

    respond_to do |format|
      if @cake_smash_session.save
        format.html { redirect_to cake_smash_session_url(@cake_smash_session), notice: "Cake smash session was successfully created." }
        format.json { render :show, status: :created, location: @cake_smash_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cake_smash_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_smash_sessions/1 or /cake_smash_sessions/1.json
  def update
    respond_to do |format|
      if @cake_smash_session.update(cake_smash_session_params)
        format.html { redirect_to cake_smash_session_url(@cake_smash_session), notice: "Cake smash session was successfully updated." }
        format.json { render :show, status: :ok, location: @cake_smash_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cake_smash_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_smash_sessions/1 or /cake_smash_sessions/1.json
  def destroy
    @cake_smash_session.destroy

    respond_to do |format|
      format.html { redirect_to cake_smash_sessions_url, notice: "Cake smash session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_smash_session
      @cake_smash_session = CakeSmashSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cake_smash_session_params
      params.require(:cake_smash_session).permit(:name, :description, :price)
    end
end
