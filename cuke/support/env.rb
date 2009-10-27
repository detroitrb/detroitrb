require 'webrat'

Webrat.configure do |config|
  config.mode = :mechanize
end

class SearchWorld
  include Webrat::Methods
  include Webrat::Matchers
end

World do
  SearchWorld.new
end
