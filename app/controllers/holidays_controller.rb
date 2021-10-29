class HolidaysController < ApplicationController
  def index
    response = HTTP.get("https://holidays.abstractapi.com/v1/?api_key=MY-API-KEY&country=US&year=2021&month=01&day=01")
    render json: response.parse(:json)
  end
end
