# == Schema Information
#
# Table name: groups
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @group = build(:group)
  end

  it 'creates with valid fields' do
    expect(@group.save).to be(true)
  end

  it 'does not create with missing fields' do
    @group.name = nil
    expect(@group.save).to be(false)
  end

  it 'does not create with empty fields' do
    @group.name = ''
    expect(@group.save).to be(false)
  end
end
