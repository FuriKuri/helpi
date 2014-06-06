require 'rest_client'
require 'json'

class GitHubAuthorization
  def initialize(user, password)
    @gh_resource = RestClient::Resource.new 'https://api.github.com/authorizations', user, password
  end

  def access_token
    'token'
  end

  private
  def existing_access_code
    js = @gh_resource.get
    json = JSON.parse(js)
    json.each do |app|
      app_name = app['app']['name']
      return app['token'] if app_name == 'Demo4 (API)'
    end
    create_new_app
  end

  def create_new_app
    js = @gh_resource.post '{ "scopes" : ["gist"], "note" : "Demo4" }'
    json = JSON.parse(js)
    json['token']
  end
end