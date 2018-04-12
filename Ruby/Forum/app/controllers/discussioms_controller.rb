class DiscussiomsController < ApplicationController
  before_action :set_discussiom, only: [:show, :edit, :update, :destroy]

  # GET /discussioms
  # GET /discussioms.json
  def index
    @discussioms = Discussiom.all
  end

  # GET /discussioms/1
  # GET /discussioms/1.json
  def show
  end

  # GET /discussioms/new
  def new
    @discussiom = Discussiom.new
  end

  # GET /discussioms/1/edit
  def edit
  end

  # POST /discussioms
  # POST /discussioms.json
  def create
    @discussiom = Discussiom.new(discussiom_params)

    respond_to do |format|
      if @discussiom.save
        format.html { redirect_to @discussiom, notice: 'Discussiom was successfully created.' }
        format.json { render :show, status: :created, location: @discussiom }
      else
        format.html { render :new }
        format.json { render json: @discussiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discussioms/1
  # PATCH/PUT /discussioms/1.json
  def update
    respond_to do |format|
      if @discussiom.update(discussiom_params)
        format.html { redirect_to @discussiom, notice: 'Discussiom was successfully updated.' }
        format.json { render :show, status: :ok, location: @discussiom }
      else
        format.html { render :edit }
        format.json { render json: @discussiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussioms/1
  # DELETE /discussioms/1.json
  def destroy
    @discussiom.destroy
    respond_to do |format|
      format.html { redirect_to discussioms_url, notice: 'Discussiom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discussiom
      @discussiom = Discussiom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discussiom_params
      params.require(:discussiom).permit(:title, :content)
    end
end
