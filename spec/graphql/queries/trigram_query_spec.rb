require 'rails_helper'

RSpec.describe GraphqlController, 'trigram show query', type: :controller do
  
  it 'can be queried by id' do
    query = <<~GQL
      query showTrigramById {
        trigram(id: 1) {
          id
          trigram
          binary
          element
        }
      }
    GQL

    post :execute, params: {query: query }

    parsed_response = JSON.parse(response.body) # request spec might give for free
    expect(parsed_response["errors"]).to eq(nil)
    expect(parsed_response["data"]["trigram"]["id"]).to eq("1")
    expect(parsed_response["data"]["trigram"]["trigram"]).to eq("☰")
    expect(parsed_response["data"]["trigram"]["binary"]).to eq("111")
    expect(parsed_response["data"]["trigram"]["element"]).to eq("Heaven/Firmament")
  end
end