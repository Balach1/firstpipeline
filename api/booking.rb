require 'rubygems'
require 'httparty'


class ApiCall
  include HTTParty
  base_uri 'http://edutechional-resty.herokuapp.com'

  def posts
    self.class.get('/posts.json')
  end
end

api_call = ApiCall.new

puts api_call.posts
