class PropublicaService
  def members(state)
    response = conn.get("/congress/v1/members/house/#{state}/current.json")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://api.propublica.org") do |req|
      req.headers["X-API-Key"] = ENV["propublica_key"]
    end
  end
end
