# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = build(:user)
  end

  it 'creates with attributes' do
    expect(@user.first_name).to eq('John')
    expect(@user.last_name).to eq('Doe')
    expect(@user.email).to eq('test@test.com')
    expect(@user.password).to eq('password')
    expect(@user.save).to be(true)
  end

  it 'does not create with missing email' do
    @user.email = nil
    expect(@user.save).to be(false)
  end

  it 'does not create with invalid email' do
    @user.email = 'not an email'
    expect(@user.save).to be(false)
  end

  it 'has blogs' do
    user = user_with_blogs
    expect(user.blogs.count).to be(5)
  end
end
