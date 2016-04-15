require 'test_helper'

class ListCoursesTest < ActionDispatch::IntegrationTest

  test 'listing courses without content' do
    get '/courses'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
  end

  test 'listing courses with content' do
    Course.create!(name: 'Test Course 1',
                   catalog: 'ABC123',
                   description: 'Test Description')
    Course.create!(name: 'Test Course 2',
                   catalog: 'DEF456',
                   description: 'Another test Description')

    get '/courses'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
    assert_equal Course.count, JSON.parse(response.body).size
  end
end
