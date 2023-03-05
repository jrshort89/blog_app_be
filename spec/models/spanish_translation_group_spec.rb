# == Schema Information
#
# Table name: spanish_translation_groups
#
#  id                     :bigint           not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  group_id               :integer          not null
#  spanish_translation_id :integer          not null
#
require 'rails_helper'

RSpec.describe SpanishTranslationGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
