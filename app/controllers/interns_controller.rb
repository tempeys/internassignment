class InternsController < ApplicationController
  before_action :set_intern, only: %i[ show edit update destroy ]

  # GET /interns or /interns.json
  def index
    @interns = Intern.all
  end

  # GET /interns/1 or /interns/1.json
  def show
  end

  # GET /interns/new
  def new
    @intern = Intern.new
  end

  # GET /interns/1/edit
  def edit
  end

  # POST /interns or /interns.json
  def create
    @intern = Intern.new(intern_params)

    respond_to do |format|
      if @intern.save
        format.html { redirect_to intern_url(@intern), notice: "Intern was successfully created." }
        format.json { render :show, status: :created, location: @intern }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interns/1 or /interns/1.json
  def update
    respond_to do |format|
      if @intern.update(intern_params)
        format.html { redirect_to intern_url(@intern), notice: "Intern was successfully updated." }
        format.json { render :show, status: :ok, location: @intern }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interns/1 or /interns/1.json
  def destroy
    @intern.destroy!

    respond_to do |format|
      format.html { redirect_to interns_url, notice: "Intern was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intern
      @intern = Intern.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intern_params
      params.require(:intern).permit(:index, :value)
    end
end
