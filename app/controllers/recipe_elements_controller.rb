class RecipeElementsController < ApplicationController
  before_action :set_recipe_element, only: %i[ show edit update destroy ]

  # GET /recipe_elements or /recipe_elements.json
  def index
    @recipe_elements = RecipeElement.all
  end

  # GET /recipe_elements/1 or /recipe_elements/1.json
  def show
  end

  # GET /recipe_elements/new
  def new
    @recipe_element = RecipeElement.new
  end

  # GET /recipe_elements/1/edit
  def edit
  end

  # POST /recipe_elements or /recipe_elements.json
  def create
    @recipe_element = RecipeElement.new(recipe_element_params)

    respond_to do |format|
      if @recipe_element.save
        format.html { redirect_to recipe_element_url(@recipe_element), notice: "Recipe element was successfully created." }
        format.json { render :show, status: :created, location: @recipe_element }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_elements/1 or /recipe_elements/1.json
  def update
    respond_to do |format|
      if @recipe_element.update(recipe_element_params)
        format.html { redirect_to recipe_element_url(@recipe_element), notice: "Recipe element was successfully updated." }
        format.json { render :show, status: :ok, location: @recipe_element }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_elements/1 or /recipe_elements/1.json
  def destroy
    @recipe_element.destroy

    respond_to do |format|
      format.html { redirect_to recipe_elements_url, notice: "Recipe element was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_element
      @recipe_element = RecipeElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_element_params
      params.require(:recipe_element).permit(:name, :quantity, :recipe_id)
    end
end
