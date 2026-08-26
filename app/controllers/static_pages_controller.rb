class StaticPagesController < ApplicationController
  def home
    client = PexelsClient.new

    if params[:collection_id].present?
      @response = client.collections(params[:collection_id])
      @response = @response.parsed_response["media"]
    end
  end
end
