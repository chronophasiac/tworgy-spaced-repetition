$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'tworgy-spaced-repetition'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end

def ostructify(obj)
  result = obj.inject({}) do |hash, (key, value)|
    hash[key] = (value.is_a?(Hash) || value.is_a?(Array)) ? value.ostructify : value
    hash
  end
  OpenStruct.new result
end
