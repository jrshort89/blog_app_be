# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'index should get all users' do
    get users_path
    assert_response :success
  end

  test 'show should return users' do
    get user_path @user
    assert_response :success
  end

  test 'create should create new users' do
    post users_path params: { user: { first_name: 'test', last_name: 'testerson', email: 'test@test.com',
                                      password: 'test' } }
    assert_response :success
  end

  test 'should udpate a users' do
    put user_path(@user),
        params: { user: { first_name: 'tests', last_name: 'testersons', email: 'tests@test.com', password: 'test' } }
    assert_response :success
  end

  test 'should delete a users' do
    delete user_path(@user)
    assert_response :success
  end
end
