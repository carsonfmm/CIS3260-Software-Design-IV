class GamecontentsController < ApplicationController
  before_action :set_gamecontent, only: %i[ show edit update destroy ]

  # GET /gamecontents or /gamecontents.json
  def index
    @gamecontents = Gamecontent.all
  end

  # GET /gamecontents/1 or /gamecontents/1.json
  def show
  end

  # GET /gamecontents/new
  def new
    @gamecontent = Gamecontent.new
  end

  # GET /gamecontents/1/edit
  def edit
  end

  # POST /gamecontents or /gamecontents.json
  def create
    @gamecontent = Gamecontent.new(gamecontent_params)

    respond_to do |format|
      if @gamecontent.save
        format.html { redirect_to gamecontent_url(@gamecontent), notice: "Gamecontent was successfully created." }
        format.json { render :show, status: :created, location: @gamecontent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gamecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamecontents/1 or /gamecontents/1.json
  def update
    respond_to do |format|
      if @gamecontent.update(gamecontent_params)
        format.html { redirect_to gamecontent_url(@gamecontent), notice: "Gamecontent was successfully updated." }
        format.json { render :show, status: :ok, location: @gamecontent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gamecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamecontents/1 or /gamecontents/1.json
  def destroy
    @gamecontent.destroy

    respond_to do |format|
      format.html { redirect_to gamecontents_url, notice: "Gamecontent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamecontent
      @gamecontent = Gamecontent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gamecontent_params
      params.require(:gamecontent).permit(:coin, :die, :points, :user_id)
    end
end
