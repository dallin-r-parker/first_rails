class CluesController < ApplicationController

  def fetch
    http = Curl.get("http://jservice.io/api/clues") do |http|
      http.headers['Content-Type'] = 'application/json'
  end
  puts http.body_str
  end
end