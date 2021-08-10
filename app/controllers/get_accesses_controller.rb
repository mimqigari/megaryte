class GetAccessesController < ApplicationController
  before_action :set_get_access, only: %i[ show edit update destroy ]

  # GET /get_accesses or /get_accesses.json
  def index
    @get_accesses = GetAccess.all
  end

  # GET /get_accesses/1 or /get_accesses/1.json
  def show
  end

  # GET /get_accesses/new
  def new
    @get_access = GetAccess.new
  end

  # GET /get_accesses/1/edit
  def edit
  end

  # POST /get_accesses or /get_accesses.json
  def create
    @get_access = GetAccess.new(get_access_params)

    respond_to do |format|
      if @get_access.save
        format.html { redirect_to root_path, notice: "Thank you. An Access Code will be sent to you via email, shortly." }
        format.json { render :show, status: :created, location: @get_access }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @get_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_accesses/1 or /get_accesses/1.json
  def update
    respond_to do |format|
      if @get_access.update(get_access_params)
        format.html { redirect_to @get_access, notice: "Access Request successfully updated." }
        format.json { render :show, status: :ok, location: @get_access }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @get_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_accesses/1 or /get_accesses/1.json
  def destroy
    @get_access.destroy
    respond_to do |format|
      format.html { redirect_to @get_access, notice: "Access Revoked" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_access
      @get_access = GetAccess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def get_access_params
      params.require(:get_access).permit(:full_name, :email, :phne, :work_place, :website, :work_vertical, :use_case, :use_region, :monthly, :approval, :early_access)
    end
end
