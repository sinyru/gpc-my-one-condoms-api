class NetPromoterScoresController < ApplicationController
  require 'csv'
  def index
    nps_url = ENV['NPS_URL']
    headers = {
      :accept => 'application/json'
    }
    @response = RestClient.get nps_url, headers
    scores = []
    CSV.parse(@response).drop(1).each do |a|
      if ( a[2].split(" ")[0].to_date < InputDate.last.start_date.to_date && a[2].split(" ")[0].to_date > InputDate.last.start_date.to_date-14 )
        scores<<[a[2].split(" ")[0], a[3].to_i]
      end
    end

    render json: scores
  end

end
