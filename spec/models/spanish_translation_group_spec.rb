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
  before(:each) do
    @spanish_translation = create(:spanish_translation)
    @group = create(:group)
  end

  it 'creates with valid fields' do
    spanish_translation_group = build(:spanish_translation_group, spanish_translation_id: @spanish_translation.id,
                                      group_id: @group.id)
    expect(spanish_translation_group.save).to be(true)
  end

  it 'does not create with missing user_id' do
    spanish_translation_group = build(:spanish_translation_group, spanish_translation_id: @spanish_translation.id, group_id: nil)
    expect { spanish_translation_group.save }.to raise_error ActiveRecord::NotNullViolation
  end

  it 'does not create with spanish_translation_id' do
    spanish_translation_group = build(:spanish_translation_group, spanish_translation_id: nil, group_id: @group.id)
    expect { spanish_translation_group.save }.to raise_error ActiveRecord::NotNullViolation
  end
end
