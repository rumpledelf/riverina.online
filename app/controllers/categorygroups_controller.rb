class CategorygroupsController < ApplicationController
  before_action :set_categorygroup, only: %i[ show edit update destroy ]

  # GET /categorygroups or /categorygroups.json
  def index
    @categorygroups = Categorygroup.all
  end

  # GET /categorygroups/1 or /categorygroups/1.json
  def show
  end

  # GET /categorygroups/new
  def new
    @categorygroup = Categorygroup.new
  end

  # GET /categorygroups/1/edit
  def edit
  end

  # POST /categorygroups or /categorygroups.json
  def create
    @categorygroup = Categorygroup.new(categorygroup_params)

    respond_to do |format|
      if @categorygroup.save
        format.html { redirect_to @categorygroup, notice: "Categorygroup was successfully created." }
        format.json { render :show, status: :created, location: @categorygroup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categorygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorygroups/1 or /categorygroups/1.json
  def update
    respond_to do |format|
      if @categorygroup.update(categorygroup_params)
        format.html { redirect_to @categorygroup, notice: "Categorygroup was successfully updated." }
        format.json { render :show, status: :ok, location: @categorygroup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorygroups/1 or /categorygroups/1.json
  def destroy
    @categorygroup.destroy!

    respond_to do |format|
      format.html { redirect_to categorygroups_path, status: :see_other, notice: "Categorygroup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorygroup
      @categorygroup = Categorygroup.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def categorygroup_params
      params.expect(categorygroup: [ :name, :icon, :description ])
    end
end
