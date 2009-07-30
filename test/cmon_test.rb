require 'test_helper'

class CmonTest < Test::Unit::TestCase
  should "convert markup correctly" do
    assert_equal File.read(fixtures_dir + '/index.out.html'), Cmon.process(File.open(fixtures_dir + '/index.html'))
  end
end
