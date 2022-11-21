# frozen_string_literal: true

class TranslateService < ApplicationService
  include HTTParty

  HEADERS = { 'Content-Type' => 'application/json', 'Ocp-Apim-Subscription-Key' => ENV['MS_TRANSLATE_API_KEY'],
              'Ocp-Apim-Subscription-Region' => 'eastus' }.freeze

  def initialize(text_to_translate)
    @text_to_translate = text_to_translate
  end

  #refactor because this is too big
  def call
    translation = translate_text
    # todo: don't hardcode user
    current_user = User.find 1
    spanish_translation = current_user.spanish_translations.create! english_text: @text_to_translate, spanish_text: translation
    spanish_translation
  end

  private

  def translate_text
    body = [{ text: @text_to_translate }].to_json
    base_uri = ENV['MS_TRANSLATOR_BASE_URI']
    response = HTTParty.post(base_uri, body: body, headers: HEADERS)
    JSON.parse(response.body)[0]['translations'][0]['text']
  end
end
