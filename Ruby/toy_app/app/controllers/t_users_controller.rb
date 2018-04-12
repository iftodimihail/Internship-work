class TUsersController < ApplicationController
  before_action :set_t_user, only: [:show, :edit, :update, :destroy]

  # GET /t_users
  # GET /t_users.json
  def index
    @t_users = TUser.all
  end

  # GET /t_users/1
  # GET /t_users/1.json
  def show
  end

  # GET /t_users/new
  def new
    @t_user = TUser.new
  end

  # GET /t_users/1/edit
  def edit
  end

  # POST /t_users
  # POST /t_users.json
  def create
    @t_user = TUser.new(t_user_params)

    respond_to do |format|
      if @t_user.save
        format.html { redirect_to @t_user, notice: 'T user was successfully created.' }
        format.json { render :show, status: :created, location: @t_user }
      else
        format.html { render :new }
        format.json { render json: @t_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_users/1
  # PATCH/PUT /t_users/1.json
  def update
    respond_to do |format|
      if @t_user.update(t_user_params)
        format.html { redirect_to @t_user, notice: 'T user was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_user }
      else
        format.html { render :edit }
        format.json { render json: @t_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_users/1
  # DELETE /t_users/1.json
  def destroy
    @t_user.destroy
    respond_to do |format|
      format.html { redirect_to t_users_url, notice: 'T user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_user
      @t_user = TUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_user_params
      params.require(:t_user).permit(:name, :email)
    end
end
