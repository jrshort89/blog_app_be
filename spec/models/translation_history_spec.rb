# == Schema Information
#
# Table name: translation_histories
#
#  id                     :bigint           not null, primary key
#  lookup_count           :integer          default(1), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  spanish_translation_id :integer
#  user_id                :integer
#
require 'rails_helper'

RSpec.describe TranslationHistory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
