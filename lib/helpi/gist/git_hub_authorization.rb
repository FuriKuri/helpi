require 'rest_client'
require 'json'

class GitHubAuthorization
  def initialize(user, password)
    @gh_resource = RestClient::Resource.new 'https://api.github.com/authorizations', user, password
  end

  def access_token
    existing_access_code
  end

  private
  def existing_access_code
    apps = JSON.parse(@gh_resource.get)
    apps.each do |app|
      app_name = app['app']['name']
      return app['token'] if app_name == 'helpi (API)'
    end
    create_new_app
  end

  def create_new_app
    response = @gh_resource.post '{ "scopes" : ["gist"], "note" : "helpi" }'
    json = JSON.parse(response)
    json['token']
  end
end