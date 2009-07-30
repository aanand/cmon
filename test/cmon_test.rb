require 'test_helper'

class CmonTest < Test::Unit::TestCase
  FIXTURES_DIR = File.dirname(__FILE__) + '/fixtures'

  should "convert markup correctly" do
    assert_equal File.read(FIXTURES_DIR + '/index.out.html'), Cmon.process(File.open(FIXTURES_DIR + '/index.html'))
  end
end
