require 'test_helper'

require 'cmon/rack'

class RackTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    base_app = proc do |env|
      [200, {"Content-Type" => "text/html"}, File.open(fixtures_dir + '/index.html')]
    end

    Cmon::Rack.new(base_app, '/')
  end

  should "filter HTML content" do
    get "/"
    assert_equal File.read(fixtures_dir + '/index.out.html'), last_response.body
  end
end
