# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'creates with valid fields' do
    blog = build(:blog)
    expect(blog.title).to eq('A Blog Title')
    expect(blog.body).to eq('A blog body.')
    expect(blog.save).to be(true)
  end

  it 'does not create with missing title' do
    blog = build(:blog, title: '')
    expect(blog.save).to be(false)
  end

  it 'does not create with missing body' do
    blog = build(:blog, body: '')
    expect(blog.save).to be(false)
  end
end
