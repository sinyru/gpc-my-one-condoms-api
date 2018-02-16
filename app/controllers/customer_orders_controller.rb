class CustomerOrdersController < ApplicationController
  def index
    @orders = CustomerOrder.all
    render json: @orders
  end

  def create
    @order = CustomerOrder.new(order_params)
    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @order = CustomerOrder.find(params[:id])
    @order.destroy
  end

  def order_params
    params.require(:customer_order).permit(:order_id, :customer, :cost, :repeat_customer, :date_created, :total_visits)
  end
end
