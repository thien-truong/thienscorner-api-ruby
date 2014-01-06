ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'minitest/spec'
require 'rack/test'

require_relative '../app'

describe 'Index' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "gets the index" do
    get '/'
    follow_redirect!
    assert last_response.ok?
  end
end
