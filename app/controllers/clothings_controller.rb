class ClothingsController < ApplicationController
  before_action :set_clothing, only: [:charge, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy] 

  # GET /clothings
  # GET /clothings.json
  def index
    @clothings = Clothing.all
    @clothing_types = ClothingType.all
    @genders = Gender.all
    @clothing_sizes = ClothingSize.all
  end

  # GET /clothings/1
  # GET /clothings/1.json
  def show
    @clothing_type = ClothingType.find_by(id: params[:id])
    @gender = Gender.find_by(id: params[:id])
    @clothing_size = ClothingSize.find_by(id: params[:id])
  end

  # GET /clothings/new
  def new
    @clothing = Clothing.new
    @clothing_type = ClothingType.all
    @gender = Gender.all
    @clothing_size = ClothingSize.all
  end

  def charge
    if current_user.stripe_id.blank?
      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
    )
      current_user.stripe_id = customer.id
      current_user.save!
    end

    charge = Stripe::Charge.create(
      customer: current_user.stripe_id,
      amount: ((@clothing.item_price) + (@clothing.postage_price)) * 100,
      description: @clothing.description,
      currency: 'AUD'
    )

    flash[:notice] = 'Payment made!'
    redirect_back fallback_location: clothings_path

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_back fallback_location: clothings_path
  end

  # GET /clothings/1/edit
  def edit
 
  end

  # POST /clothings
  # POST /clothings.json
  def create
    @clothing = Clothing.new(clothing_params)
    @clothing.user = current_user
    respond_to do |format|
      if @clothing.save
        format.html { redirect_to @clothing, notice: 'Clothing was successfully created.' }
        format.json { render :show, status: :created, location: @clothing }
      else
        format.html { render :new }
        format.json { render json: @clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothings/1
  # PATCH/PUT /clothings/1.json
  def update
    respond_to do |format|
      if @clothing.update(clothing_params)
        format.html { redirect_to @clothing, notice: 'Clothing was successfully updated.' }
        format.json { render :show, status: :ok, location: @clothing }
      else
        format.html { render :edit }
        format.json { render json: @clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothings/1
  # DELETE /clothings/1.json
  def destroy
    @clothing.destroy
    respond_to do |format|
      format.html { redirect_to clothings_url, notice: 'Clothing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clothing
      @clothing = Clothing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clothing_params
      params.require(:clothing).permit(:user_id, :title, :description, :clothing_type_id, :gender_id, :clothing_size_id, :item_price, :postage_price, :image)
    end
end
