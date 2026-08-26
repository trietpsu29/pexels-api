class PexelsClient
  include HTTParty
  base_uri "https://api.pexels.com/v1"

  def initialize
    @options = { headers: { "Authorization" => Rails.application.credentials.pexels_api_key } }
  end

  def collections(collection_id)
    self.class.get("/collections/#{collection_id}", @options)
  end
end
