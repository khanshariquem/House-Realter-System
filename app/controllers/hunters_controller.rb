class HuntersController < ApplicationController
  before_action :set_hunter, only: [:show, :edit, :update, :destroy]

  # GET /hunters
  # GET /hunters.json
  def index
    @hunters = Hunter.all
  end

  # GET /hunters/1
  # GET /hunters/1.json
  def show
  end

  # GET /hunters/new
  def new
    @hunter = Hunter.new
  end

  # GET /hunters/1/edit
  def edit
  end

  # POST /hunters
  # POST /hunters.json
  def create
    @hunter = Hunter.new(hunter_params)
    @user = User.create(:name=>params[:hunter][:name],:email=>params[:hunter][:email],:password=>params[:hunter][:password],:phone=>params[:hunter][:phone])
    @user.hunter = @hunter
    respond_to do |format|
      if @hunter.save
        format.html { redirect_to @hunter, notice: 'Hunter was successfully created.' }
        format.json { render :show, status: :created, location: @hunter }
      else
        format.html { render :new }
        format.json { render json: @hunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hunters/1
  # PATCH/PUT /hunters/1.json
  def update
    @user = @hunter.user
    @user.update :name=>params[:hunter][:user_attributes][:name],:email=>params[:hunter][:user_attributes][:email],:password=>params[:hunter][:user_attributes][:password],:phone=>params[:hunter][:user_attributes][:phone]
    respond_to do |format|
      if @hunter.update(hunter_params)
        format.html { redirect_to @hunter, notice: 'Hunter was successfully updated.' }
        format.json { render :show, status: :ok, location: @hunter }
      else
        format.html { render :edit }
        format.json { render json: @hunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hunters/1
  # DELETE /hunters/1.json
  def destroy
    @hunter.destroy
    respond_to do |format|
      format.html { redirect_to hunters_url, notice: 'Hunter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunter
      @hunter = Hunter.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def hunter_params
      p params
      params.require(:hunter).permit(:user_id ,:contact_mode)
    end
end
