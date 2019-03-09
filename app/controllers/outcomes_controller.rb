class OutcomesController < ApplicationController
  before_action :set_outcome, only: [:show, :edit, :update, :destroy]

  # GET /outcomes
  # GET /outcomes.json
  def index
    @outcomes = Outcome.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /outcomes/1
  # GET /outcomes/1.json
  def show
  end

  # GET /outcomes/new
  def new
    @outcome = Outcome.new
  end

  # GET /outcomes/1/edit
  def edit
  end

  # POST /outcomes
  # POST /outcomes.json
  def create
    @outcome = Outcome.new(outcome_params)

    respond_to do |format|
      if @outcome.save
        format.html { redirect_to root_path, notice: 'Väljaminek edukalt sisestatud.' }
        format.json { render :show, status: :created, location: @outcome }
      else
        format.html { render :new }
        format.json { render json: @outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outcomes/1
  # PATCH/PUT /outcomes/1.json
  def update
    respond_to do |format|
      if @outcome.update(outcome_params)
        format.html { redirect_to root_path, notice: 'Väljaminek edukalt muudetud.' }
        format.json { render :show, status: :ok, location: @outcome }
      else
        format.html { render :edit }
        format.json { render json: @outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outcomes/1
  # DELETE /outcomes/1.json
  def destroy
    @outcome.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Väljaminek edukalt kustutatud.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outcome
      @outcome = Outcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outcome_params
      params.require(:outcome).permit(:summa, :selgitus, :kuupaev, :makstud, :igakuine)
    end
end
