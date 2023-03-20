# frozen_string_literal: true

class TranslateService < ApplicationService
  include HTTParty

  HEADERS = { 'Content-Type' => 'application/json', 'Ocp-Apim-Subscription-Key' => ENV['MS_TRANSLATE_API_KEY'],
              'Ocp-Apim-Subscription-Region' => 'eastus' }.freeze

  def initialize(text_to_translate)
    @text_to_translate = text_to_translate
  end

  def call
    translation = translate_text
    # TODO: don't hardcode users
    current_user = User.find 1
    ActiveRecord::Base.transaction do
      translation = SpanishTranslation.create! english_text: @text_to_translate, spanish_text: translation
      TranslationHistory.create! spanish_translation_id: translation.id,
                                 user_id: current_user.id
    end

    # TODO: add rescue and error handling

    translation
  end

  private

  def translate_text
    body = [{ text: @text_to_translate }].to_json
    base_uri = ENV['MS_TRANSLATOR_BASE_URI']
    response = HTTParty.post(base_uri, body: body, headers: HEADERS)
    JSON.parse(response.body)[0]['translations'][0]['text']
  end
end
