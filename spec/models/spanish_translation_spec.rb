# == Schema Information
#
# Table name: spanish_translations
#
#  id           :bigint           not null, primary key
#  english_text :string
#  spanish_text :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe SpanishTranslation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
