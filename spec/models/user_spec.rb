require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates' do
    user = build(:user)
    expect(user.first_name).to eq('John')
  end
end
