class ReportsController < ApplicationController
  def index
    render json: Report.all
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      render json: @report, status: :created
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  def report_params
    params.require(:report).permit(:revenue, :dates, :repeat_customers, :total_visits, :total_orders, :average_order_value, :conversion_rate, :new_customers, :samples, :six_packs, :twelve_packs, :twenty_four_packs, :mobiles, :desktops, :tablets, :nps)
  end
end
