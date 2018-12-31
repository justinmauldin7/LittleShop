class OrdersController < ApplicationController
  # before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.order_status = "cancelled"
    @order.add_back_inventory
    @order.save
    flash[:success] = 'Order was successfully cancelled'
    redirect_to profile_path(current_user)
  end

  def create
    @order = Order.create(user: current_user)
    @order.add_cart_items(@cart.contents)
    @order.update_inventory
    redirect_to profile_orders_path
    flash[:success] = "Your order was created successfully"
  end
end
  # # GET /orders/new
  # def new
  #   @order = Order.new
  # end
  #
  # # GET /orders/1/edit
  # def edit
  # end

  # POST /orders
  # POST /orders.json
  # def create
  #   @order = Order.new(order_params)
  #
  #   respond_to do |format|
  #     if @order.save
  #       format.html { redirect_to @order, notice: 'Order was successfully created.' }
  #       format.json { render :show, status: :created, location: @order }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @order.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /orders/1
  # # PATCH/PUT /orders/1.json
  # def update
  #   respond_to do |format|
  #     if @order.update(order_params)
  #       format.html { redirect_to @order, notice: 'Order was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @order }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @order.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_order
  #     @order = Order.find(params[:id])
  #   end
  #
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def order_params
  #     params.require(:order).permit(:order_status)
  #   end
