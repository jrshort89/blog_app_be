# frozen_string_literal: true

class TranslationHistory < ApplicationRecord
  belongs_to :user
  belongs_to :spanish_translation
end
