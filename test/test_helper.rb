require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'rack/test'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'cmon'

class Test::Unit::TestCase
  def fixtures_dir
    File.dirname(__FILE__) + '/fixtures'
  end
end
