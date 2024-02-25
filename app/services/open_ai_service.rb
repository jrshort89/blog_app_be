# frozen_string_literal: true

class OpenAiService < ApplicationService
  include HTTParty

  HEADERS = { 'Content-Type' => 'application/json', 'Authorization' => "Bearer #{ENV['OPENAI_API_KEY']}" }.freeze

  def initialize
    @base_url = ENV['OPENAI_BASE_URL']
  end

  def post(prompt)
    uri = @base_url + '/chat/completions'

    HTTParty.post(uri, body: body(prompt), headers: HEADERS)
  end

  private

  def body(prompt)
    {
      model: "gpt-3.5-turbo",
      messages: [{ "role": "user", "content": "respond to this phrase in Spanish: " + prompt }],
      temperature: 0.7
    }.to_json
  end
end
