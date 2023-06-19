class FridgeElementsController < ApplicationController
  before_action :set_fridge_element, only: %i[ show edit update destroy ]

  # GET /fridge_elements or /fridge_elements.json
  def index
    @fridge_elements = FridgeElement.all
  end

  # GET /fridge_elements/1 or /fridge_elements/1.json
  def show
  end

  # GET /fridge_elements/new
  def new
    @user = User.find(params[:user_id])
    @fridge = Fridge.find(params[:fridge_id])
    @fridge_element = @fridge.fridge_elements.new
  end

  # GET /fridge_elements/1/edit
  def edit
  end

  # POST /fridge_elements or /fridge_elements.json
  def create
    @user = User.find(params[:user_id])
    @fridge = Fridge.find(params[:fridge_id])
    @fridge_element = @fridge.fridge_elements.new(fridge_element_params)

    respond_to do |format|
      if @fridge_element.save
        format.html { redirect_to [@user, @fridge], notice: "Fridge element was successfully created." }
        format.json { render :show, status: :created, location: @fridge_element }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fridge_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fridge_elements/1 or /fridge_elements/1.json
  def update
    respond_to do |format|
      if @fridge_element.update(fridge_element_params)
        format.html { redirect_to redirect_to [@user, @fridge], notice: "Fridge element was successfully updated." }
        format.json { render :show, status: :ok, location: @fridge_element }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fridge_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fridge_elements/1 or /fridge_elements/1.json
  def destroy
    @fridge_element.destroy

    respond_to do |format|
      format.html { redirect_to fridge_elements_url, notice: "Fridge element was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fridge_element
      @user = User.find(params[:user_id])
      @fridge = Fridge.find(params[:fridge_id])
      @fridge_element = FridgeElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fridge_element_params
      params.require(:fridge_element).permit(:name, :quantity, :fridge_id)
    end
end
