require 'test_helper'

class ListingLocationsTest < ActionDispatch::IntegrationTest
  setup { host!'localhost:3000' }
  test 'returns list of all locations' do
    get '/locations'
    assert_equal 200, response.status
    refute_empty response.body
  end
end