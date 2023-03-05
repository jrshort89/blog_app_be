# == Schema Information
#
# Table name: user_spanish_translations
#
#  id                     :bigint           not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  spanish_translation_id :integer
#  user_id                :integer
#
require 'rails_helper'

RSpec.describe UserSpanishTranslation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
