require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'creates' do
    group = build(:group)
    expect(group.name).to eq("Generic group title")
    expect(group.save).to eq(true)
  end

  it 'does not create with missing name' do
    group = build(:group, name: '')
    expect(group.save).to be(false)
  end

  it 'validates unique name' do
    create(:group)
    dup_group = build(:group)
    expect(dup_group.save).to be(false)
  end
end
