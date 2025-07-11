class DetailedSalesController < ApplicationController
  before_action :set_detailed_sale, only: %i[ show edit update destroy ]

  # GET /detailed_sales or /detailed_sales.json
  def index
    @detailed_sales = DetailedSale.all
  end

  # GET /detailed_sales/1 or /detailed_sales/1.json
  def show
  end

  # GET /detailed_sales/new
  def new
    @detailed_sale = DetailedSale.new
  end

  # GET /detailed_sales/1/edit
  def edit
  end

  # POST /detailed_sales or /detailed_sales.json
  def create
    @detailed_sale = DetailedSale.new(detailed_sale_params)

    respond_to do |format|
      if @detailed_sale.save
        format.html { redirect_to @detailed_sale, notice: "Detailed sale was successfully created." }
        format.json { render :show, status: :created, location: @detailed_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detailed_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detailed_sales/1 or /detailed_sales/1.json
  def update
    respond_to do |format|
      if @detailed_sale.update(detailed_sale_params)
        format.html { redirect_to @detailed_sale, notice: "Detailed sale was successfully updated." }
        format.json { render :show, status: :ok, location: @detailed_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detailed_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailed_sales/1 or /detailed_sales/1.json
  def destroy
    @detailed_sale.destroy!

    respond_to do |format|
      format.html { redirect_to detailed_sales_path, status: :see_other, notice: "Detailed sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detailed_sale
      @detailed_sale = DetailedSale.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def detailed_sale_params
      params.expect(detailed_sale: [ :quantity, :current_price, :total_price, :discount, :product_id, :sale_id ])
    end
end
