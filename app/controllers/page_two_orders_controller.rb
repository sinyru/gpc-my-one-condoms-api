class PageTwoOrdersController < ApplicationController
  def index
    api_key = ENV['SHOPIFY_API_KEY']
    secret_key = ENV['SHOPIFY_SECRET_KEY']
    @response = RestClient::Request.execute(
      method: :get,
      url: "https://#{api_key}:#{secret_key}@myonecondoms-us.myshopify.com/admin/orders.json?status=any&created_at_min=#{InputDate.last.start_date.to_date-7}&created_at_max=#{InputDate.last.start_date.to_date}&limit=250&page=2"
    )
    render json: @response
  end
end
