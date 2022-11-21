# frozen_string_literal: true

class TranslateService < ApplicationService
  include HTTParty

  HEADERS = { 'Content-Type' => 'application/json', 'Ocp-Apim-Subscription-Key' => ENV['MS_TRANSLATE_API_KEY'],
              'Ocp-Apim-Subscription-Region' => 'eastus' }.freeze

  def initialize(text_to_translate)
    @text_to_translate = text_to_translate
  end

  def call
    body = [{ text: @text_to_translate }].to_json
    base_uri = ENV['MS_TRANSLATOR_BASE_URI']
    response = HTTParty.post(base_uri, body: body, headers: HEADERS)
    JSON.parse(response.body)[0]['translations'][0]['text']
  end
end
