# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SpanishTranslationGroup, type: :model do
  before(:all) do
    Group.destroy_all
    SpanishTranslation.destroy_all
    @group = create :group
    @spanish_translation = create :spanish_translation
  end

  it 'creates' do
    spanish_translation_group = build :spanish_translation_group, group: @group,
                                                                  spanish_translation: @spanish_translation

    expect(spanish_translation_group.save).to be(true)
  end

  it 'validates spanish_translation uniqueness for group_id' do
    create :spanish_translation_group, group: @group, spanish_translation: @spanish_translation
    dup_spanish_translation_group = build :spanish_translation_group, group: @group,
                                                                      spanish_translation: @spanish_translation

    expect(dup_spanish_translation_group.save).to eq(false)
  end
end
