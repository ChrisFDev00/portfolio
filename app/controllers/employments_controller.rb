class EmploymentsController < ApplicationController
  before_action :set_employment, only: %i[ show edit update destroy ]

  # GET /employments or /employments.json
  def index
    @employments = Employment.all
  end

  # GET /employments/1 or /employments/1.json
  def show
  end

  # GET /employments/new
  def new
    @employment = Employment.new
  end

  # GET /employments/1/edit
  def edit
  end

  # POST /employments or /employments.json
  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to @employment, notice: "Employment was successfully created." }
        format.json { render :show, status: :created, location: @employment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employments/1 or /employments/1.json
  def update
    respond_to do |format|
      if @employment.update(employment_params)
        format.html { redirect_to @employment, notice: "Employment was successfully updated." }
        format.json { render :show, status: :ok, location: @employment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employments/1 or /employments/1.json
  def destroy
    @employment.destroy!

    respond_to do |format|
      format.html { redirect_to employments_path, status: :see_other, notice: "Employment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def employment_params
      params.expect(employment: [ :title, :company, :location, :start_date, :end_date, :description ])
    end
end
