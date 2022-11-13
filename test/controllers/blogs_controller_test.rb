# frozen_string_literal: true

require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blogs(:one)
  end

  test 'should get index' do
    get blogs_path
    assert_response :success
  end

  test 'should get show' do
    get blog_path @blog
    assert_response :success
  end

  test 'should create' do
    post blogs_path params: { blog: { title: 'test', body: 'test' } }
    assert_response :success
  end

  test 'should update' do
    put blog_path(@blog), params: { blog: { title: 'test', body: 'test' } }
    assert_response :success
  end

  test 'should delete' do
    delete blog_path(@blog)
    assert_response :success
  end
end
