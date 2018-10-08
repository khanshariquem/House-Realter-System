class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :validates_admin_or_realtor , only: [:show]
  before_action :validates_admin_only , only: [:edit, :update, :destroy , :index , :create ]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to users_path, notice: 'User was successfully created.'}
        format.json {render :show, status: :created, location: @user}
      else
        format.html {render :new}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if session[:dual_role]
        if !params[:is_realtor] || !params[:is_hunter]
          session[:dual_role] = false
        end
      end
      if @user.update_without_password(user_update_params)
        format.html {redirect_to @user, notice: 'User was successfully updated.'}
        format.json {render :show, status: :ok, location: @user}
      else
        format.html {render :edit}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url, notice: 'User was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:fname,:contact,:email,:password,:is_realtor,:is_hunter,:contact_mode,:company_id)
  end
  def user_update_params
    params.require(:user).permit(:fname,:contact,:email,:is_hunter,:is_realtor)
  end

  def validates_admin_only
    if user_signed_in? && !(current_user.is_admin)
      respond_to do |format|
        format.html {redirect_to home_index_path}
      end
    end
  end

  def validates_admin_or_realtor
    if user_signed_in? && (current_user.is_hunter)
      respond_to do |format|
        format.html {redirect_to home_index_path}
      end
    end
  end

end
