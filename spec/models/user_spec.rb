require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates with attributes' do
    user = build(:user)
    expect(user.first_name).to eq('John')
    expect(user.last_name).to eq('Doe')
    expect(user.email).to eq('test@test.com')
    expect(user.password).to eq('password')
    expect(user.save).to be(true)
  end

  it 'does not create with missing email' do
    user = build(:user, email: '')
    expect(user.save).to be(false)
  end

  it 'does not create with invalid email' do
    user = build(:user, email: 'not an email')
    expect(user.save).to be(false)
  end
end
