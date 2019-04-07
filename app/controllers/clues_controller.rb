class CluesController < ApplicationController

  def fetch
    http = Curl.get("http://jservice.io/api/clues") do |http|
      http.headers['Content-Type'] = 'application/json'
  end
  render json: {
    status: 200,
    data: JSON.parse(http.body_str)
  }
  end
end