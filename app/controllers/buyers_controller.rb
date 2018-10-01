class BuyersController < ApplicationController
  before_action :set_buyer, only: [:show, :edit, :update, :destroy]

  # GET /buyers
  # GET /buyers.json
  def index
    @buyers = Buyer.where(["house_id = ?", params[:id]])
  end

  def showinterestlist
    @user_buyers = Buyer.where(["user_id = ?", current_user])
  end

  # GET /buyers/1
  # GET /buyers/1.json
  def show
  end

  # GET /buyers/new
  def new
    @buyer = Buyer.new
    @buyer.house_id = params[:id]
    @buyers = Buyer.where(["user_id = ?", current_user.id])
    @buyers = @buyers.where(["house_id = ?", params[:id]])
  end

  # GET /buyers/1/edit
  def edit
  end

  # POST /buyers
  # POST /buyers.json
  def create
    @buyer = Buyer.new(buyer_params)
    respond_to do |format|
      if @buyer.save
        format.html { redirect_to house_path(@buyer.house), notice: 'House was added to interest List.' }
        format.json { render :show, status: :created, location: @buyer }
      else
        format.html { render :new }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyers/1
  # PATCH/PUT /buyers/1.json
  def update
    # respond_to do |format|
    #   if @buyer.update(buyer_params)
    #     format.html { redirect_to house_path(@buyer.house), notice: 'Buyer was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @buyer }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @buyer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /buyers/1
  # DELETE /buyers/1.json
  def destroy
    @house = @buyer.house
    @buyer.destroy
    respond_to do |format|
      format.html { redirect_to house_path(@house), notice: 'House was removed from interest List.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer
      @buyer = Buyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_params
      params.require(:buyer).permit(:house_id,:user_id)
    end
end
