class AppliancesController < ApplicationController
  before_action :set_appliance, only: [:show, :update, :destroy]
  before_filter :authenticate_user!

  # GET /appliances
  # GET /appliances.json
  def index
    # @appliances = Appliance.order("created_at desc")
    @appliances =  current_user.appliances.order("created_at desc")
  end

  # GET /appliances/1
  # GET /appliances/1.json
  def show
  end

  # GET /appliances/new
  def new
    @appliance = Appliance.new
  end

  
  def edit
    @appliance = current_user.appliances.find(params[:id])
  end

  # POST /appliances
  # POST /appliances.json
  def create
    @appliance = Appliance.new(appliance_params)
    respond_to do |format|
      if @appliance.save
        format.html { redirect_to user_appliances_url, notice: 'Appliance was successfully created.' }
        format.json { render :show, status: :created, location: @appliance }
      else
        format.html { render :new }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appliances/1
  # PATCH/PUT /appliances/1.json
  def update
    respond_to do |format|
      if @appliance.update(appliance_params)
        # format.html { redirect_to appliances_path}
        # format.json { render :show, status: :ok, location: @appliance }
        @current_button_id = @appliance.id
        @current_button_state = @appliance.state
        @current_button_name = @appliance.name
        if @current_button_state == true
          @msg = "#{@current_button_name} switched ON"
        else
          @msg = "#{@current_button_name} switched OFF"
        end
        format.js
        format.html { redirect_to root_path}
      else
        format.html { render :edit }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appliances/1
  # DELETE /appliances/1.json
  def destroy
    @appliance.destroy
    respond_to do |format|
      format.html { redirect_to user_appliances_url, notice: 'Appliance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appliance_params
      params.require(:appliance).permit(:name, :image, :state, :port, :user_id) 
    end
  end
